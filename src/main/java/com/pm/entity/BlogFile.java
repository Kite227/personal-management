package com.pm.entity;

import java.io.Serializable;

public class BlogFile implements Serializable {
    private String uuid;

    private String description;

    private String filename;

    private static final long serialVersionUID = 1L;
    
    public BlogFile() {
    	
    }
    
    public BlogFile(String uuid, String description, String filename) {
    	
    	this.uuid = uuid;
    	this.description = description;
    	this.filename = filename;
    	
    }

    public String getUuid() {
        return uuid;
    }

    public void setUuid(String uuid) {
        this.uuid = uuid == null ? null : uuid.trim();
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }

    public String getFilename() {
        return filename;
    }

    public void setFilename(String filename) {
        this.filename = filename == null ? null : filename.trim();
    }
}