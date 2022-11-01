package com.youngtvjobs.ycc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/rental")
@Controller
public class RentalController {

	@RequestMapping("/readingroom")
	public String readingRoom() {
		return "rental/readingRoom";
	}
}
