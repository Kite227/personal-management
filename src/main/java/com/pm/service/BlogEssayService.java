package com.pm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.ObjectUtils;

import com.pm.dao.BlogEssayMapper;
import com.pm.entity.BlogEssay;
import com.pm.util.DateUtils;

@Service
public class BlogEssayService {

	@Autowired
	private BlogEssayMapper blogEssayMapper;
	
	public List<BlogEssay> getEssays() {
		
		 List<BlogEssay> essays = blogEssayMapper.getEssays();
		 
		 if(ObjectUtils.isEmpty(essays)) {
			 return null;
		 }
		 for (BlogEssay essay : essays) {
			essay.setDateString(DateUtils.getDateString(essay.getDate()));
		 }
		 
		 return essays;
	}
}
