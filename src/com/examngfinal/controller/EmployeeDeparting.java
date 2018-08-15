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
 * ����ָ��ģ�����
 * v1.0 shiyt
 */
@Controller
public class EmployeeDeparting {
	@Autowired
	private ImprovementService improvementService;
	
	//�����ϵ�Ľ����
	   @RequestMapping(value="addEmChangeAdvance.do", method=RequestMethod.POST)
		public String addEmChangeAdvance(Improvement improvement,HttpSession session) {
			improvementService.addEmChangeAdvance(improvement);
			session.setAttribute("improvement", improvement);
			return "advice";
		}
	   //�Ľ�����
	   @RequestMapping(value="changePlan.do", method=RequestMethod.POST)
		@ResponseBody
		public void changePlan() {
		   
		   //�����Ľ�������̬ҳ��
			
		}
	
	
	 //��������̬�ȶ�Ա������A
	   @RequestMapping("ablitityDepartingA")
	   public String ablitityDepartA(HttpSession session){
		   List<JobExam> aalist=improvementService.findAblitityDepartA();
		   session.setAttribute("aalist", aalist);
		   return "ablitity-depart";
	   }
	   
	 //��������̬�ȶ�Ա������B
	   @RequestMapping("ablitityDepartingB")
	   public String ablitityDepartB(HttpSession session){
		   List<JobExam> aalist=improvementService.findAblitityDepartB();
		   session.setAttribute("aalist", aalist);
		   return "ablitity-depart";
	   }
	 //��������̬�ȶ�Ա������C
	   @RequestMapping("ablitityDepartingC")
	   public String ablitityDepartC(HttpSession session){
		   List<JobExam> aalist=improvementService.findAblitityDepartC();
		   session.setAttribute("aalist", aalist);
		   return "ablitity-depart";
	   }
	 //��������̬�ȶ�Ա������D
	   @RequestMapping("ablitityDepartingD")
	   public String ablitityDepartD(HttpSession session){
		   List<JobExam> aalist=improvementService.findAblitityDepartD();
		   session.setAttribute("aalist", aalist);
		   return "ablitity-depart";
	   }
	  
	   //��ӡ
	   @RequestMapping("printPaper")
	   public void exportWord(HttpSession session) throws Exception {
	 	    Improvement improvement=(Improvement) session.getAttribute("improvement");
	         XWPFDocument doc = new XWPFDocument();
	         XWPFParagraph title = doc.createParagraph();
	         
	         // ����������뷽ʽ
	         title.setAlignment(ParagraphAlignment.CENTER);
	         title.setVerticalAlignment(TextAlignment.TOP);
	         // ��һҳҪʹ��p1�����������
	         XWPFRun r1 = title.createRun();
	         // ���������Ƿ�Ӵ�
	         r1.setBold(true);
	         r1.setFontSize(20);
	         // ����ʹ�ú�������
	         r1.setFontFamily("Courier");
	         // ������������֮��ļ��
	         r1.setTextPosition(10);
	         r1.setText("��˾����������Դ������޸����");
	         
	         // ���������Ϣ
	         
	         XWPFParagraph p3 = doc.createParagraph();
	         p3.setWordWrap(true);
	         XWPFRun r3 = p3.createRun();       
	         r3.setTextPosition(0);
	         r3.setFontSize(15);
	         r3.setText("���йز��Ű��׶���������޸������");
	         // ��Ŀ��ѡ��
	         XWPFParagraph p4 = doc.createParagraph();
	         p4.setWordWrap(true);
	         XWPFRun r4 = p4.createRun();
	         r4.setTextPosition(8);
	         r4.setText("��һ�׶����ݣ�"+improvement.getStage1());
	         r4.addCarriageReturn();
	         r4.setText("��ֹ����:"+improvement.getTime1());
	         r4.addCarriageReturn();
	         r4.setText("�ڶ��׶�����:"+improvement.getStage2());
	         r4.addCarriageReturn();
	         r4.setText("��ֹ����:"+improvement.getTime2());
	         r4.addCarriageReturn();
	         r4.setText("�������:"+improvement.getStage3());
	         r4.addCarriageReturn();
	         
	         
	         String path = session.getServletContext().getRealPath("/word");
	         String fn = "s001"+ System.currentTimeMillis()+".docx";
	         FileOutputStream out = new FileOutputStream(path+"/"+fn);
	         doc.write(out);
	         out.close();
	         System.out.println("success");
	       }
}
