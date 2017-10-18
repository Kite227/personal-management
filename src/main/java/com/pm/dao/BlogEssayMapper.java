package com.pm.dao;

import java.util.List;

import com.pm.entity.BlogEssay;

public interface BlogEssayMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(BlogEssay record);

    int insertSelective(BlogEssay record);

    BlogEssay selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(BlogEssay record);

    int updateByPrimaryKey(BlogEssay record);

	List<BlogEssay> getEssays();
}