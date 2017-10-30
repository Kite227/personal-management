package com.pm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageInfo;
import com.pm.entity.BlogFile;
import com.pm.service.BlogFileService;

@Controller
@RequestMapping("/file")
public class FileListController {

	@Autowired
	private BlogFileService blogFileService;
	
	/**
	 * 文件下载分页
	 * @param pn
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String getFiles(@RequestParam(value = "pn", defaultValue = "1")Integer pn, 
			Model model) {
		
		PageInfo<BlogFile> page = blogFileService.getAllFile(pn);
		model.addAttribute("pageInfo", page);
		
		return "blog-file";
		
	}
}
