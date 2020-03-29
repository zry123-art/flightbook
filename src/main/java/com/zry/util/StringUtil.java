package com.zry.util;

public class StringUtil {

	/**
	 * 判断是否为空
	 * @param object
	 */
	public static boolean isEmpty(Object object){
		if(object.equals("") || object==null){
			return true;
		}else {
			return false;
		}
	}
}
