package com.pm.dao;

import java.util.List;

import com.pm.entity.BlogFile;

public interface BlogFileMapper {
    int deleteByPrimaryKey(String uuid);

    int insert(BlogFile record);

    int insertSelective(BlogFile record);

    BlogFile selectByPrimaryKey(String uuid);

    int updateByPrimaryKeySelective(BlogFile record);

    int updateByPrimaryKey(BlogFile record);

	List<BlogFile> getAllFile();
}