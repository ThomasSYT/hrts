/**
 * 
 * @version 1.0
 * @createTime 2016-4-29
 * @auth Administrator
 */
package com.examngfinal.util;

/**
 * MD5
 */
import java.security.MessageDigest;

import sun.misc.BASE64Encoder;
  
/** 
 * 采用MD5加密解密 
 */  
public class MD5Util {  
  
    /*** 
     * MD5加码 生成32位md5码 
     */  
    public static String string2MD5(String inStr){  
        MessageDigest md5 = null;  
        try{  
            md5 = MessageDigest.getInstance("MD5");  
        }catch (Exception e){  
            System.out.println(e.toString());  
            e.printStackTrace();  
            return "";  
        }  
        md5.update(inStr.getBytes());
        byte[] temp = md5.digest();
        md5.reset();
        String outStr = (new BASE64Encoder()).encodeBuffer(temp);
        return outStr;
//        char[] charArray = inStr.toCharArray();  
//        byte[] byteArray = new byte[charArray.length];  
//  
//        for (int i = 0; i < charArray.length; i++)  
//            byteArray[i] = (byte) charArray[i];  
//        byte[] md5Bytes = md5.digest(byteArray);  
//        StringBuffer hexValue = new StringBuffer();  
//        for (int i = 0; i < md5Bytes.length; i++){  
//            int val = ((int) md5Bytes[i]) & 0xff;  
//            if (val < 16)  
//                hexValue.append("0");  
//            hexValue.append(Integer.toHexString(val));  
//        }  
//        return hexValue.toString();  
  
    }  
}
