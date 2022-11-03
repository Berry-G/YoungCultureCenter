package com.youngtvjobs.ycc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

//회원관리 컨트롤러
@Controller
public class MemberController {
	//회원약관동의
	@RequestMapping("/joincheck")
	public String joincheck() {
		return "member/joincheck";
	}
	//회원가입
	@RequestMapping("/joinmember")
	public String joinmember()	{
		return "member/joinmember";
	}
	//회원가입 결과
	@RequestMapping("/joinresult")
	public String joinresult()	{
		return "member/joinresult";
	}
	//로그인
	@RequestMapping("/login")
	public String login()	{
		return "member/loginForm";
	}
	//마이페이지1 : 본인인증
	@RequestMapping("/mypage")
	public String mypage1()	{
		return "member/mypage1";
	}
	//마이페이지2 : 회원정보 수정
	@RequestMapping("/mypage/mypage2")
	public String mypage2()	{
		return "member/mypage2";
	}
	//마이페이지3 : 회원탈퇴 완료
	@RequestMapping("/mypage/mypage3")
	public String mypage3()	{
		return "member/mypage3";
	}
	//마이페이지4 : 내 수강목록
	@RequestMapping("/mypage/mypage4")
	public String mypage4()	{
		return "member/mypage4";
	}
}
