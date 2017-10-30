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
import com.pm.Enum.PnEnum;
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
	 * 首页
	 * @param pn
	 * @param model
	 * @return
	 */
	@RequestMapping("/index.do")
	public String getBlogs(@RequestParam(value = "pn", defaultValue = "1")Integer pn,
			Model model) {
		
		PageInfo<BlogArticle> page = blogService.getAll(pn);
		model.addAttribute("pageInfo", page);
		
		return "index";
	}
	
	/**
	 * typeid=1 韶华追忆
	 * typeid=2技术分享
	 * @param pn
	 * @param typeId
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String getBlogsByTypeId(@RequestParam(value = "pn", defaultValue = "1")Integer pn,
			@RequestParam(value = "typeId", defaultValue = "1") Integer typeId,
			Model model) {
		
		PageInfo<BlogArticle> page = blogService.getAllByTypeId(pn, typeId);
		model.addAttribute("blogsInfo", page);
		
		//获取最新文章
		PageInfo<BlogArticle> allPage = blogService.getAll(PnEnum.PnOne.getIndex());
		model.addAttribute("allBlogsInfo", allPage);
		
		return typeId == TypeIdEnum.TypeId_home.getValue() ? "blog-recall" : "blog-skill";
	}
	
	/**
	 * 博客内容
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
		
		//获取最新文章
		PageInfo<BlogArticle> page = blogService.getAll(PnEnum.PnOne.getIndex());
		model.addAttribute("pageInfo", page);
		
		//每次点开浏览量加一
		blogService.updateView(id);
		
		return content.getTypeId() == TypeIdEnum.TypeId_home.getValue() ? "blog-content" : "blog-content2";
		
	}
	/**
	 * 后台博客删除接口
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
	 * 后台添加新博客接口
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
	 * 更新博客内容
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
