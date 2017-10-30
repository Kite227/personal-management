package com.pm.dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.pm.entity.BlogArticle;

public interface BlogArticleMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(BlogArticle record);

    int insertSelective(BlogArticle record);

    BlogArticle selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(BlogArticle record);

    int updateByPrimaryKey(BlogArticle record);

	List<BlogArticle> getAll();

	List<BlogArticle> getAllByTypeId(Integer typeId);

	BlogArticle getBlogById(Integer id);

	BlogArticle getNextBlogByDate(@Param("date")Date date, @Param("typeId")Integer typeId);

	int updateProveByPrimaryKey(@Param("id")Integer id);

	void updateView(BlogArticle blogArticle);
}