package com.pm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.pm.entity.BlogEssay;
import com.pm.service.BlogEssayService;

@Controller
@RequestMapping("/essay")
public class BlogEssayController {

	@Autowired
	private BlogEssayService blogEssayService;
	
	@RequestMapping(value = "/blog_essay", method = RequestMethod.GET)
	public String getEssay(@RequestParam(value = "pn", defaultValue = "1") Integer pn, 
			Model model) {
		
		PageHelper.startPage(pn, 5);
		List<BlogEssay> essays = blogEssayService.getEssays();
		PageInfo<BlogEssay> pages = new PageInfo<>(essays, 5);
		model.addAttribute("pageInfo", pages);
		
		return "blog-essay";
	}
	
}
