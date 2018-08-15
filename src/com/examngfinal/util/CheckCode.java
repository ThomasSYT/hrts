package com.examngfinal.util;

import java.util.Random;

public class CheckCode {
	public static String getCheckCode(){
		StringBuffer sf=new StringBuffer();
		Random rd=new Random(System.currentTimeMillis());
		for (int i = 0; i < 4; i++) {
			char x=(char)rd.nextInt(123);
			if(x>96){
				sf.append(x);
			}else{
				i--;
			}			
		}
		return sf.toString();
	}

}
