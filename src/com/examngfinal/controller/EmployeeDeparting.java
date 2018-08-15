/**
 * 
 * @version 1.0
 * @createTime 2016-5-3
 * @auth Administrator
 */
package com.examngfinal.controller;

import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.poi.xwpf.usermodel.ParagraphAlignment;
import org.apache.poi.xwpf.usermodel.TextAlignment;
import org.apache.poi.xwpf.usermodel.XWPFDocument;
import org.apache.poi.xwpf.usermodel.XWPFParagraph;
import org.apache.poi.xwpf.usermodel.XWPFRun;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.examngfinal.bean.Improvement;
import com.examngfinal.bean.job.JobExam;
import com.examngfinal.service.ImprovementService;

/**
 * 
 * 工作指标模块控制
 * v1.0 shiyt
 */
@Controller
public class EmployeeDeparting {
	@Autowired
	private ImprovementService improvementService;
	
	//添加体系改进意见
	   @RequestMapping(value="addEmChangeAdvance.do", method=RequestMethod.POST)
		public String addEmChangeAdvance(Improvement improvement,HttpSession session) {
			improvementService.addEmChangeAdvance(improvement);
			session.setAttribute("improvement", improvement);
			return "advice";
		}
	   //改进方案
	   @RequestMapping(value="changePlan.do", method=RequestMethod.POST)
		@ResponseBody
		public void changePlan() {
		   
		   //跳到改进方案静态页面
			
		}
	
	
	 //根据能力态度对员工分类A
	   @RequestMapping("ablitityDepartingA")
	   public String ablitityDepartA(HttpSession session){
		   List<JobExam> aalist=improvementService.findAblitityDepartA();
		   session.setAttribute("aalist", aalist);
		   return "ablitity-depart";
	   }
	   
	 //根据能力态度对员工分类B
	   @RequestMapping("ablitityDepartingB")
	   public String ablitityDepartB(HttpSession session){
		   List<JobExam> aalist=improvementService.findAblitityDepartB();
		   session.setAttribute("aalist", aalist);
		   return "ablitity-depart";
	   }
	 //根据能力态度对员工分类C
	   @RequestMapping("ablitityDepartingC")
	   public String ablitityDepartC(HttpSession session){
		   List<JobExam> aalist=improvementService.findAblitityDepartC();
		   session.setAttribute("aalist", aalist);
		   return "ablitity-depart";
	   }
	 //根据能力态度对员工分类D
	   @RequestMapping("ablitityDepartingD")
	   public String ablitityDepartD(HttpSession session){
		   List<JobExam> aalist=improvementService.findAblitityDepartD();
		   session.setAttribute("aalist", aalist);
		   return "ablitity-depart";
	   }
	  
	   //打印
	   @RequestMapping("printPaper")
	   public void exportWord(HttpSession session) throws Exception {
	 	    Improvement improvement=(Improvement) session.getAttribute("improvement");
	         XWPFDocument doc = new XWPFDocument();
	         XWPFParagraph title = doc.createParagraph();
	         
	         // 设置字体对齐方式
	         title.setAlignment(ParagraphAlignment.CENTER);
	         title.setVerticalAlignment(TextAlignment.TOP);
	         // 第一页要使用p1所定义的属性
	         XWPFRun r1 = title.createRun();
	         // 设置字体是否加粗
	         r1.setBold(true);
	         r1.setFontSize(20);
	         // 设置使用何种字体
	         r1.setFontFamily("Courier");
	         // 设置上下两行之间的间距
	         r1.setTextPosition(10);
	         r1.setText("公司对于人力资源管理的修改意见");
	         
	         // 存放试题信息
	         
	         XWPFParagraph p3 = doc.createParagraph();
	         p3.setWordWrap(true);
	         XWPFRun r3 = p3.createRun();       
	         r3.setTextPosition(0);
	         r3.setFontSize(15);
	         r3.setText("请有关部门按阶段完成以下修改意见：");
	         // 题目和选项
	         XWPFParagraph p4 = doc.createParagraph();
	         p4.setWordWrap(true);
	         XWPFRun r4 = p4.createRun();
	         r4.setTextPosition(8);
	         r4.setText("第一阶段内容："+improvement.getStage1());
	         r4.addCarriageReturn();
	         r4.setText("截止日期:"+improvement.getTime1());
	         r4.addCarriageReturn();
	         r4.setText("第二阶段内容:"+improvement.getStage2());
	         r4.addCarriageReturn();
	         r4.setText("截止日期:"+improvement.getTime2());
	         r4.addCarriageReturn();
	         r4.setText("最终意见:"+improvement.getStage3());
	         r4.addCarriageReturn();
	         
	         
	         String path = session.getServletContext().getRealPath("/word");
	         String fn = "s001"+ System.currentTimeMillis()+".docx";
	         FileOutputStream out = new FileOutputStream(path+"/"+fn);
	         doc.write(out);
	         out.close();
	         System.out.println("success");
	       }
}
