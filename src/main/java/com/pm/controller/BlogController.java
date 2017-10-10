package com.pm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.pm.entity.Blog;
import com.pm.service.BlogService;

/**
 * �������ݿ�����
 *
 */

@Controller
@RequestMapping("/blog")
public class BlogController {

	@Autowired
	private BlogService blogService;
	
	/**
	 * blog�ķ�ҳ��ѯ
	 * @param pn
	 * @param model
	 * @return
	 */
	public String getBlogs(@RequestParam(value = "pn", defaultValue = "1")Integer pn,
			Model model) {
		
		PageHelper.startPage(pn, 10);
		List<Blog> blogs = blogService.getAll();
		//����ѯ����Ϣ��װ��PageInfo
		PageInfo<Blog> page = new PageInfo(blogs, 10);
		model.addAttribute("pageInfo", page);
		
		return "list";
	}
}
