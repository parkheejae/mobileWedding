package com.heejanie.weding;

import java.awt.Image;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.imageio.ImageIO;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.heejanie.weding.model.FileImgInfo;

@Controller
public class MobileWeddingController {

	
	@RequestMapping("/heejanie")
	public String welcome(Model model) { 
        String str= "bin/main/static/img/";
		try {
		File path = new File(str);
		
        System.out.println("11 / " + path.getAbsolutePath());
//		final String pattern = "jpg" ;
		List<FileImgInfo> list = new ArrayList<>();
		String fileList[] = path.list();
		System.out.println("fileList : "+fileList);
		if(fileList!=null && fileList.length > 0){
		    for(int i=0; i < fileList.length; i++){
		  		System.out.println(fileList[i]) ;
		  		
				Image image = ImageIO.read(new File(str+fileList[i]));
				int imageWidth = image.getWidth(null);
				int imageHeight = image.getHeight(null);
				System.out.println("imageWidth" + imageWidth) ;
				System.out.println("imageHeight" + imageHeight) ;
				FileImgInfo info = new FileImgInfo();
				info.setWidePic(imageWidth>=imageHeight);
				info.setFileName(fileList[i]);
		  		list.add(info);
		    }
		}
		
		model.addAttribute("fileList",list);
		return "heejanie"; 
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "heejanie"; 
	}
	
//	@RequestMapping("/")
//	public String notFound() { return "heejanie"; }

}
