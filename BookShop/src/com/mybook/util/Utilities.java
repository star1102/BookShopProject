package com.mybook.util;

public class Utilities {
	private Utilities(){}
	
	public static String isNull(String str, String changStr){
			String result ="";
			if(str == null) result = changStr;
			else result = str;
			return result;
	}
	
	public static String toUTF8(String str){
		String result = "";
		try{
			byte[] strs = str.getBytes("ISO-8859-1");
			result = new String(strs,"UTF-8");
		}catch(Exception e){}
		
		return result;
	}
}
