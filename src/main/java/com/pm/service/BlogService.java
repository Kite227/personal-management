package com.pm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pm.dao.BlogMapper;
import com.pm.entity.Blog;

@Service
public class BlogService {

	@Autowired
	private BlogMapper blogMapper;
	
	/**
	 * 查询所有blog内容
	 * @return
	 */
	public List<Blog> getAll() {
		
		return blogMapper.getAll();
	}

}
