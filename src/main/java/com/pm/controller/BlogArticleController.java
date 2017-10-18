package com.pm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.annotation.JsonCreator.Mode;
import com.fasterxml.jackson.annotation.JsonFormat.Value;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.pm.Enum.TypeIdEnum;
import com.pm.entity.BlogArticle;
import com.pm.entity.Msg;
import com.pm.service.BlogArticleService;

/**
 * 博客内容控制器
 *
 */

@Controller
@RequestMapping("/blog")
public class BlogArticleController {

	@Autowired
	private BlogArticleService blogService;
	
	/**
	 * blog的分页查询
	 * 首页 typeId = 1
	 * 技术分享 typeId = 2
	 * @param pn
	 * @param typeId
	 * @param model
	 * @return
	 */
	@RequestMapping("/index.do")
	public String getBlogs(@RequestParam(value = "pn", defaultValue = "1")Integer pn,
			Model model) {
		
		PageHelper.startPage(pn, 5);
		List<BlogArticle> blogs = blogService.getAll();
		//将查询的信息封装到PageInfo
		PageInfo<BlogArticle> page = new PageInfo(blogs, 5);
		model.addAttribute("pageInfo", page);
		
		return "index";
	}
	
	public String getBlogsByTypeId(@RequestParam(value = "pn", defaultValue = "1")Integer pn,
			@RequestParam(value = "typeId", defaultValue = "1") Integer typeId,
			Model model) {
		
		PageHelper.startPage(pn, 5);
		List<BlogArticle> blogs = blogService.getAllByTypeId(typeId);
		//将查询的信息封装到PageInfo
		PageInfo<BlogArticle> page = new PageInfo(blogs, 5);
		model.addAttribute("pageInfo", page);
		
		return typeId == TypeIdEnum.TypeId_home.getValue() ? "index" : "";
	}
	
	/**
	 * 获取当前及下一个博客内容
	 * @return
	 */
	@RequestMapping(value = "/content", method = RequestMethod.GET)
	public String getBlogById(@RequestParam("id") Integer id, Model model) {
		
		if(id <= 0) {
			return null;
		}
		
		BlogArticle content = blogService.getBlogById(id);
		if(ObjectUtils.isEmpty(content)) {
			return null;
		}
		model.addAttribute("blogContent", content);
		
		return "blog-content";
		
	}
	/**
	 * 后台删除接口
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "/del_blog.do", method = RequestMethod.DELETE)
	public String deleteBlogById(@RequestParam Integer id) {
		
		if(id < 0) {
			return null;
		}
		
		Integer result = blogService.deleteBlogById(id);
		return result > 0 ? "" : "";
				
	}
	
	/**
	 * 后台创建新的博客接口
	 * @param blogArticle
	 * @return
	 */
	@RequestMapping(value = "/create", method = RequestMethod.POST)
	public String createBlog(@RequestParam BlogArticle blogArticle) {
		
		if(blogArticle == null) {
			return null;
		}
		
		boolean result = blogService.createBlog(blogArticle);
		return result == true ? "" : "";
	}
	
	/**
	 * 后台更新博客接口
	 * @param blogArticle
	 * @return
	 */
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String updateBlog(@RequestParam BlogArticle blogArticle) {
		
		if(blogArticle == null) {
			return null;
		}
		
		boolean result = blogService.updateBlog(blogArticle);
		return result == true ? "" : "";
	}
}
