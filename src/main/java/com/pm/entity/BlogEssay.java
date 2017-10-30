package com.pm.entity;

import java.io.Serializable;
import java.util.Date;

/**
 * @author Administrator
 *
 */
/**
 * @author Administrator
 *
 */
public class BlogEssay implements Serializable {
    private Integer id;

    private String content;

    private Date date;
    
    private String dateString;//把日期转换成String格式不做orm映射

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

	public String getDateString() {
		return dateString;
	}

	public void setDateString(String dateString) {
		this.dateString = dateString;
	}
    
}