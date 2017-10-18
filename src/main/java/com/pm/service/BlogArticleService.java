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
	 * ����typeId��ѯ���е� blog����
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
	 * ��ȡ��������
	 * @return
	 */
	public BlogArticle getBlogById(Integer id) {
		
		BlogArticle blogArticle = blogMapper.getBlogById(id);
		//��ȡ����������ڵ�����
		BlogArticle nextBlogArticle = blogMapper.getNextBlogByDate(blogArticle.getDate(), blogArticle.getTypeId());
		if(!ObjectUtils.isEmpty(nextBlogArticle)) {
			blogArticle.setNextId(nextBlogArticle.getId());
			blogArticle.setNextTitle(nextBlogArticle.getTitle());
		}
		dateToString(blogArticle);
		
		return blogArticle;
	}
	
	/**
	 * ����ת��BlogArticle���ڵķ���
	 */
	private void dateToString(BlogArticle blogArticle) {
		
		blogArticle.setDateString(DateUtils.getDateString(blogArticle.getDate()));
		
	}


}
