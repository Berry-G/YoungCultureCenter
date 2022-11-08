package com.youngtvjobs.ycc.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController
{
	//로그인
	@RequestMapping("/login")
	public String login()	{
		return "member/loginForm";
	}
}
