package com.youngtvjobs.ycc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RentalController
{
	//독서실 대여
	@RequestMapping("/rental/studyroom")
	public String studyRoom()
	{
		return "rental/studyRoom";
	}
	//사물함 대여
	@RequestMapping("/rental/lockerinfo")
	public String readingRoom()
	{
		return "rental/lockerinfo";
	}
	//대관신청
	@RequestMapping("/rental/place")
	public String rentalPlace()
	{
		return "rental/place";
	}
	
}
