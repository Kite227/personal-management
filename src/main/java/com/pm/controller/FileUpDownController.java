package com.pm.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.pm.entity.BlogFile;
import com.pm.service.BlogFileService;
import com.pm.util.UUIDUtil;

/**
 * Java文件上传下载控制器
 * @author Administrator
 *
 */
@Controller
@RequestMapping("/file_handle")
public class FileUpDownController {

	@Autowired
	private BlogFileService blogFileService;
	
	//限制上传文件扩展名
	private String extName = "pdf,txt,doc,docx";
	
	@RequestMapping(value = "/upload", method = RequestMethod.POST)
	public String upload(HttpServletRequest request,
			@RequestParam("description") String description,
			@RequestParam("file") MultipartFile file) {
		
		  //如果文件不为空，写入上传路径
        if(!file.isEmpty()) {
            //上传文件路径
            //String path = request.getServletContext().getRealPath("D:BlogFile");
        	String path = "D:/BlogFile";
            //上传文件名(通过uuid生成唯一文件名)
            String uuid = UUIDUtil.getUUID();
            String filename = uuid + "_" + file.getOriginalFilename();
            File filepath = new File(path, filename);
            //判断路径是否存在，如果不存在就创建一个
            if (!filepath.getParentFile().exists()) { 
                filepath.getParentFile().mkdirs();
            }
            //将上传文件保存到一个目标文件当中
            try {
				file.transferTo(new File(path + File.separator + filename));
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
            
            //把生成的uuid 以及文件信息存入数据库中
            BlogFile blogFile = new BlogFile(uuid, description, file.getOriginalFilename());
            blogFileService.creteFile(blogFile);
        }
        
        return "";
	}
	
	
	@RequestMapping(value="/download")
    public ResponseEntity<byte[]> download(HttpServletRequest request,
    		@RequestParam("uuid") String uuid,
            @RequestParam("filename") String filename,
            Model model)throws Exception {
    	
    	filename = uuid + "_" + filename;
       //下载文件路径
       String path = "D:/BlogFile";
       File file = new File(path + File.separator + filename);
       HttpHeaders headers = new HttpHeaders();  
       //下载显示的文件名，解决中文名称乱码问题  
       String downloadFielName = new String(filename.getBytes("UTF-8"),"iso-8859-1");
       //通知浏览器以attachment（下载方式）打开
       headers.setContentDispositionFormData("attachment", downloadFielName); 
       //application/octet-stream ： 二进制流数据（最常见的文件下载）。
       headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
       return new ResponseEntity<byte[]>(FileUtils.readFileToByteArray(file),    
               headers, HttpStatus.CREATED);  
    }
}

