package com.youngtvjobs.ycc.member;

import java.net.URLEncoder;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class LoginController
{
	@Autowired
	MemberDao memberDao;
	
	//로그인
	@GetMapping("/login")
	public String login()	{
		return "member/loginForm";
	}
	@PostMapping("/login")
	public String login(String id, String pw, String toURL, boolean save_id,
						HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		if(!logincheck(id, pw)) {
			String msg = URLEncoder.encode("id 또는 pwd가 일치하지 않습니다.", "utf-8"); 
			return "redirect:/login?msg="+msg;
		}
		
		//아이디 저장 기능
		if(save_id) {
			Cookie cookie = new Cookie("id", id);
			response.addCookie(cookie);
		} else {
			Cookie cookie = new Cookie("id", id);
			cookie.setMaxAge(0);
			response.addCookie(cookie);
		}
		
		HttpSession session = request.getSession();
		
		//유저 정보를 세션에 저장하기 위한 객체 생성
		MemberDto userDB = memberDao.loginSelect(id);		//로그인 한 id로 WHERE 조회한 데이터 저장

		//세션에 아이디와 유저 등급 저장
		session.setAttribute("id", id);
		System.out.println(session.getAttribute("id"));		//세션에 저장된 id 체크
		session.setAttribute("grade", userDB.getUser_grade());
		System.out.println(session.getAttribute("grade"));	//세션에 저장된 grade 체크
		
		toURL = toURL==null || toURL.equals("") ? "/" : toURL;
		return "redirect:" + toURL;
	}
	
	private boolean logincheck(String id, String pw) throws Exception
	{
		// TODO Auto-generated method stub
		MemberDto user = memberDao.loginSelect(id);

		if(user == null) 
			return false;
		return user.getUser_pw().equals(pw);
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		// 세션을 종료
		session.invalidate();
		// 홈으로 이동
		return "redirect:/";
	}
	
	
	
}
