package com.youngtvjobs.ycc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CourseController {

	@RequestMapping("/course/search")
	public String courseSearch() {
		return "/course/search";
	}

	@RequestMapping("/course/detail")
	public String courseDetail() {
		return "/course/coursedetail";
	}
}