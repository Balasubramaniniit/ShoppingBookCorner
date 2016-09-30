/*package com.book.controller;

import java.io.File;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
@Controller
public class FileUploadController {
	@RequestMapping(value = "/upload", method = RequestMethod.POST)
	public  String uploadFileHandler(@RequestParam String name,  @RequestParam MultipartFile file) {
		if (!file.isEmpty()) {
			try {
					
					
					String rootPath = "E:/NIIT notes/update project/shoppingbook/src/main/webapp/resources";
					File dir = new File(rootPath + File.separator + "images");
					if (!dir.exists())
						dir.mkdirs();
					// Create the file on server
					File serverFile = new File(dir + File.separator + name + ".jpg");
					System.out.println(serverFile);
					System.out.println(file.getOriginalFilename());
					file.transferTo(serverFile);		
					return "redirect:/products";
					}
					catch (Exception e) 
					{
						return "redirect:/home";
					}
				} 
			else 
			{
				return "redirect:/home";
		}
	}

}*/