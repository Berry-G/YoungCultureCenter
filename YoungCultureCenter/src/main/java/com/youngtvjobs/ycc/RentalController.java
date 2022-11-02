package com.youngtvjobs.ycc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RentalController {

	@RequestMapping("rental/studyroom")
	public String studyRoom() {
		return "rental/studyRoom";
	}
}
