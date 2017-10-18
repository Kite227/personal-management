package com.pm.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.ObjectUtils;

import com.mysql.jdbc.BlobFromLocator;
import com.pm.dao.BlogArticleMapper;
import com.pm.entity.BlogArticle;
import com.pm.util.DateUtils;

@Service
public class BlogArticleService {

	@Autowired
	private BlogArticleMapper blogMapper;
	
	/**
	 * 
	 * @return
	 */
	public List<BlogArticle> getAll() {
		
		List<BlogArticle> blogArticles = blogMapper.getAll();
		for(BlogArticle blogArticle : blogArticles) {
			dateToString(blogArticle);
		}
		
		return blogArticles;
	}
	
	/**
	 * 
	 * 依据typeId查询所有的 blog内容
	 * @return
	 */
	public List<BlogArticle> getAllByTypeId(Integer typeId) {
		
		List<BlogArticle> blogArticles =  blogMapper.getAllByTypeId(typeId);
		
		for(BlogArticle blogArticle : blogArticles) {
			dateToString(blogArticle);
		}
		
		return blogArticles;
	}

	public int deleteBlogById(Integer id) {
		
		return blogMapper.deleteByPrimaryKey(id);
	}

	public boolean createBlog(BlogArticle blogArticle) {

		Integer result = blogMapper.insert(blogArticle);
		return result > 0 ? true : false;
	}

	public boolean updateBlog(BlogArticle blogArticle) {

		Integer result = blogMapper.updateByPrimaryKey(blogArticle);
		return result > 0 ? true : false;
	}

	/**
	 * 获取博客内容
	 * @return
	 */
	public BlogArticle getBlogById(Integer id) {
		
		BlogArticle blogArticle = blogMapper.getBlogById(id);
		//获取相邻最近日期的文章
		BlogArticle nextBlogArticle = blogMapper.getNextBlogByDate(blogArticle.getDate(), blogArticle.getTypeId());
		if(!ObjectUtils.isEmpty(nextBlogArticle)) {
			blogArticle.setNextId(nextBlogArticle.getId());
			blogArticle.setNextTitle(nextBlogArticle.getTitle());
		}
		dateToString(blogArticle);
		
		return blogArticle;
	}
	
	/**
	 * 用于转换BlogArticle日期的方法
	 */
	private void dateToString(BlogArticle blogArticle) {
		
		blogArticle.setDateString(DateUtils.getDateString(blogArticle.getDate()));
		
	}


}
