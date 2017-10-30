package com.pm.util;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

public class CookieContext implements Serializable{

	private static final long serialVersionUID = -7953799871704777459L;
	/**
	 * 通过属性名获取cookie
	 * @param attrName
	 * @return
	 */
	public  static Cookie getAttr(String attrName){
		Map<String,Cookie> map = ReadCookieMap();
		if(map.containsKey(attrName)) {
			Cookie cookie = map.get(attrName);
			return cookie;
		}else {
			return null;
		}
	}
	/**
	 *添加cookie
	 * @param key
	 * @param value
	 * @return
	 */
	public static Cookie setCookie(String key,String value) {
		 Cookie cookie = new Cookie(key,value);
		  return cookie;
	}
	/**
	 *封装cookie
	 * @param request
	 * @return
	 */
	private static Map<String,Cookie> ReadCookieMap(){ 
		
	    Map<String,Cookie> cookieMap = new HashMap<String,Cookie>();
	    Cookie[] cookies = getCookie();
	    if(null!=cookies){
	        for(Cookie cookie : cookies){
	            cookieMap.put(cookie.getName(), cookie);
	        }
	    }
	    return cookieMap;
	}
	public static Cookie[] getCookie() {
		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder .getRequestAttributes()).getRequest();
		return request.getCookies();
	}
}
