package com.youngtvjobs.ycc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

//회원관리 컨트롤러
@Controller
public class MemeberController {
	
	@RequestMapping("/joincheck")
	public String joincheck() {
		return "member/joincheck";
	}
	
	@RequestMapping("/joinmember")
	public String joinmember()	{
		return "member/joinmember";
	}
	
	@RequestMapping("joinresult")
	public String joinresult()	{
		return "member/joinresult";
	}
}