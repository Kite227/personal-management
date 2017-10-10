package com.pm.dao;

import com.pm.entity.LeaveWord;

public interface LeaveWordMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(LeaveWord record);

    int insertSelective(LeaveWord record);

    LeaveWord selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(LeaveWord record);

    int updateByPrimaryKey(LeaveWord record);
}