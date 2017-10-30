package com.pm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.pm.dao.BlogFileMapper;
import com.pm.entity.BlogFile;

@Service
public class BlogFileService {
	
	@Autowired
	private BlogFileMapper blogFileMapper;
	
	/**
	 * 把文件相关信息添加到数据库中
	 * @param blogFile
	 */
	public void creteFile(BlogFile blogFile) {
		
		blogFileMapper.insert(blogFile);
		
	}

	public PageInfo<BlogFile> getAllFile(Integer pn) {
		
		PageHelper.startPage(pn, 5);
		List<BlogFile> files = blogFileMapper.getAllFile();
		PageInfo<BlogFile> page = new PageInfo(files, 5);
		return page;
	}

}
