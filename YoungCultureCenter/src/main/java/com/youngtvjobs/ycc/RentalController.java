package com.youngtvjobs.ycc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/rental")
public class RentalController {

	@GetMapping("/studyroom")
	public String readingRoom() {
		return "rental/studyRoom";
	}
}
