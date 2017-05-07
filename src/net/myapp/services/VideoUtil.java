package net.myapp.services;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.StringJoiner;

import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;


public class VideoUtil {

	
	public boolean upload_Video ( String UPLOADED_FOLDER,MultipartFile[] video){
		
		
		 StringJoiner sj = new StringJoiner(" , ");

		    for (MultipartFile file : video) {

		        if (file.isEmpty()) {
		            continue; //next pls
		        }

		        try {

		            byte[] bytes = file.getBytes();
		            Path path = Paths.get(UPLOADED_FOLDER + file.getOriginalFilename());
		            Files.write(path, bytes);

		            sj.add(file.getOriginalFilename());

		        } catch (IOException e) {
		        	
		            e.printStackTrace();
		        }

		    }
 
		    String uploadedFileName = sj.toString();
		    if (StringUtils.isEmpty(uploadedFileName)) {
		    	System.out.println("Yuklenmedi");
		           return false;
		    } else {
		    	System.out.println("Yuklendi");

		           return   true;
		    }

		  
		
		
		
		
		
		
	}
	
}
