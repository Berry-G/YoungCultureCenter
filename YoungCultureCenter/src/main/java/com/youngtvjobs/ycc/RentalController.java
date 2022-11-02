package com.youngtvjobs.ycc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

//대여, 대관 시스템 컨트롤러
@Controller
public class RentalController {

	@RequestMapping("/rental/readingroom")
	public String readingRoom() {
		return "rental/readingRoom";
	}
}
