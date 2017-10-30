package com.pm.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.ObjectUtils;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.mysql.jdbc.BlobFromLocator;
import com.pm.dao.BlogArticleMapper;
import com.pm.entity.BlogArticle;
import com.pm.util.DateUtils;

@Service
public class BlogArticleService {

	@Autowired
	private BlogArticleMapper blogMapper;
	
	/**
	 * 获取分页的博客内容
	 * @return
	 */
	public PageInfo<BlogArticle> getAll(Integer pn) {
		
		PageHelper.startPage(pn, 5);
		List<BlogArticle> blogArticles = blogMapper.getAll();
		if(!ObjectUtils.isEmpty(blogArticles)) {
			for(BlogArticle blogArticle : blogArticles) {
				dateToString(blogArticle);
			}
		}
		//分页
		PageInfo<BlogArticle> page = new PageInfo(blogArticles, 5);
		
		return page;
	}
	
	/**
	 * 
	 * 根据typeid获取blog内容
	 * @return
	 */
	public PageInfo<BlogArticle> getAllByTypeId(Integer pn, Integer typeId) {
		

		PageHelper.startPage(pn, 5);
		List<BlogArticle> blogArticles =  blogMapper.getAllByTypeId(typeId);
		
		if(!ObjectUtils.isEmpty(blogArticles)) {
			for(BlogArticle blogArticle : blogArticles) {
				dateToString(blogArticle);
			}
		}
		PageInfo<BlogArticle> page = new PageInfo(blogArticles, 5);
		
		return page;
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
	 *通过id获取博客内容
	 * @return
	 */
	public BlogArticle getBlogById(Integer id) {
		
		BlogArticle blogArticle = blogMapper.getBlogById(id);
		//获取下一个博客的id与标题
		BlogArticle nextBlogArticle = blogMapper.getNextBlogByDate(blogArticle.getDate(), blogArticle.getTypeId());
		if(!ObjectUtils.isEmpty(nextBlogArticle)) {
			blogArticle.setNextId(nextBlogArticle.getId());
			blogArticle.setNextTitle(nextBlogArticle.getTitle());
		}
		dateToString(blogArticle);
		
		return blogArticle;
	}
	
	public int udapteProveByPrimaryKey(Integer id) {
		
		return blogMapper.updateProveByPrimaryKey( id);
	}
	
	/**
	 * 转换BlogArticle的日期
	 */
	private void dateToString(BlogArticle blogArticle) {
		
		blogArticle.setDateString(DateUtils.getDateString(blogArticle.getDate()));
		
	}

	/**
	 * 增加浏览量
	 */
	public void updateView(Integer id) {
		
		BlogArticle blogArticle = blogMapper.getBlogById(id);
		if(ObjectUtils.isEmpty(blogArticle)) {
			return;
		}
		
		blogArticle.setView(blogArticle.getView() + 1);
		blogMapper.updateView(blogArticle);
		
	}



}
