package com.heejanie.weding;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MobileWeddingController {

	
	@RequestMapping("/heejanie")
		public String welcome() { return "heejanie"; }
	
//	@RequestMapping("/")
//	public String notFound() { return "heejanie"; }

}
