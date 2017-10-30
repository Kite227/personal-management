package com.pm.util;

public class CookieUtils  extends CookieContext{

	private static final long serialVersionUID = 7603456638204241277L;

	public static Integer isZan(String id) {
		return  Integer.parseInt(getAttr(id).getValue());	
	}
}
