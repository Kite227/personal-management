package com.pm.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pm.dao.BlogUserMapper;

@Service
public class BlogUserService {

	@Autowired
	private BlogUserMapper userMapper;
	
	public boolean selectUserByAdmin(String admin,String password) {
		Map<String,String> map = new HashMap();
		map.put("admin", admin);
		map.put("password", password);
		//boolean result = (userMapper.selectCountByAdminAndPassword(map))>0?true:false;
		
		return false;
	}
}
