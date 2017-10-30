package com.pm.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.pm.service.BlogArticleService;
import com.pm.util.CookieContext;
import com.pm.util.CookieUtils;

@Controller
@RequestMapping("/index")
public class IndexAjax {
	
	@Resource
	BlogArticleService blogArticleService ;
	
	@RequestMapping("/prove.do")
	public Map<String,Object> prove(@RequestParam("id") String id, HttpServletResponse response){
		
		Map<String, Object> result = new HashMap();
		Cookie[] cookies = CookieContext.getCookie();
		boolean flag = false;
	
		if(!ObjectUtils.isEmpty(cookies)) {	
			//如果已经赞过这篇文章不可重复再赞
			for(int i = 0; i < cookies.length; i++) {
				if(cookies[i].getName() == id && cookies[i].getValue() == "1") {
					result.put("isZan", 0);
					flag = true;
					return result;
				}
			}
		}
		//对没有赞的文章进行点赞
		if(!flag) {
			Cookie cookie = new Cookie(id, "1");
			response.addCookie(cookie);
			if(blogArticleService.udapteProveByPrimaryKey(Integer.valueOf(id))>0) {
				result.put("isZan", 1);
				return result;
			}else {
				result.put("msg", "操作失败");
				return result;
			}
		}
		
		result.put("isZan", 0);
		return result;
	}
}
