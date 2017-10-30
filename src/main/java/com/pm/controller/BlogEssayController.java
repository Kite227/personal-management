package com.pm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageInfo;
import com.pm.Enum.PnEnum;
import com.pm.entity.BlogArticle;
import com.pm.entity.BlogEssay;
import com.pm.service.BlogArticleService;
import com.pm.service.BlogEssayService;

@Controller
@RequestMapping("/essay")
public class BlogEssayController {

	@Autowired
	private BlogEssayService blogEssayService;
	
	@Autowired
	private BlogArticleService BlogArticleService;
	
	@RequestMapping(value = "/blog_essay", method = RequestMethod.GET)
	public String getEssay(@RequestParam(value = "pn", defaultValue = "1") Integer pn, 
			Model model) {
		
		PageInfo<BlogEssay> pages = blogEssayService.getEssays(pn);;
		model.addAttribute("pageInfo", pages);
		
		//获取最新文章
		PageInfo<BlogArticle> articles = BlogArticleService.getAll(PnEnum.PnOne.getIndex());
		model.addAttribute("articleInfo", articles);
		
		return "blog-essay";
	}
	
}
