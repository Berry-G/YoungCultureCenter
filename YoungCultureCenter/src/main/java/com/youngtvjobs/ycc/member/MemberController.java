package com.youngtvjobs.ycc.member;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.youngtvjobs.ycc.common.YccMethod;

//회원관리 컨트롤러
@Controller
public class MemberController {
	
	MemberDao memberDao;
	MemberService memberService;

	InquiryService inquiryService;
	InquiryDao inquiryDao;		
	
	JavaMailSender mailSender;


	@Autowired
	public MemberController(MemberDao memberDao, MemberService memberService, InquiryService inquiryService,
			InquiryDao inquiryDao, JavaMailSender mailSender) {
		//super();
		this.memberDao = memberDao;
		this.memberService = memberService;
		this.inquiryService = inquiryService;
		this.inquiryDao = inquiryDao;
		this.mailSender = mailSender;
	}
	
	//회원가입
	@RequestMapping(value = "/member/signin2", method = RequestMethod.GET)
	public String signinmember() throws Exception	{
		return "member/signin2";
	}
	
	@RequestMapping(value = "/member/signin2", method = RequestMethod.POST)
	public String signinmember(@ModelAttribute MemberDto dto, Model m) throws Exception	{
		
		//System.out.println(dto.toString());
		memberService.signinMember(dto);
		m.addAttribute("memberDto", dto);
		
		return "member/signin3";
	}
	
	//회원가입 결과
	@RequestMapping("/member/signin3")
	public String joinresult()	{
		return "member/signin3";
	}

	/*
	 * //로그인
	 * 
	 * @RequestMapping("/login") public String login() { return "member/loginForm";
	 * }
	 */
	
	//이메일 인증 : siForm.jsp에서 넘겨받은 값을 memberService.java에 memberdto.getUser_email()에 담아서 전달해줌
		@PostMapping("/signin/registerEmail")
		@ResponseBody
		public String emailConfirm1(@RequestBody MemberDto memberdto) throws Exception {
			
			return memberService.insertMember(memberdto.getUser_email());
		}
	
	//마이페이지1 : 본인인증
	@GetMapping("/mypage/pwcheck")
	public String pwCheck(HttpSession session, HttpServletRequest request, String inputPassword) throws Exception	{
	    //비 로그인 시 접근 불가
		if(!YccMethod.loginSessionCheck(request)) 
	    	return "redirect:/login?toURL="+request.getRequestURL();

		return "member/pwCheck";
	}

	@PostMapping("/mypage/pwcheck")
	public String pwCheck(String inputPassword, HttpSession session, Model m) throws Exception	{
		
		MemberDto memberDto = memberDao.loginSelect((String)session.getAttribute("id"));
		
		//DB의 pw와 입력된 pw가 같으면 modify로 리다이렉트, 그렇지 않으면 pwCheck로 돌아감
		if (memberDto.getUser_pw().equals(inputPassword))
		{

			return "redirect:/mypage/modify";
		}
			
		m.addAttribute("alert", "<script>alert('비밀번호가 일치하지 않습니다.')</script>");
			
		return "member/pwCheck";
	}

	//마이페이지 2: 회원 정보 수정
	@GetMapping("/mypage/modify")
	public String modify(HttpServletRequest request, HttpSession session, Model m) throws Exception {
		// 비 로그인 시 접근 불가
		if (!YccMethod.loginSessionCheck(request))
			return "redirect:/login?toURL=" + request.getRequestURL();

		MemberDto memberDto = memberDao.loginSelect((String)session.getAttribute("id"));
		
		m.addAttribute("memberDto", memberDto);
		
		//이메일 아이디/도메인 분리하여 모델에 저장 (회원정보수정 이메일란에 출력)
		String emailId= memberDto.getUser_email().split("@")[0];
		String emailDomain=  memberDto.getUser_email().split("@")[1];
		
		m.addAttribute("emailId", emailId);
		m.addAttribute("emailDomain", emailDomain);
		
		// 생년월일 String으로 형변환 & 포맷 지정하여 모델에 저장 (회원정보수정 생년월일란에 출력)		
		String birth_date = YccMethod.date_toString(memberDto.getUser_birth_date());
		
		m.addAttribute("birth_date", birth_date);

		return "member/modify";
	}
	
	@PostMapping("/mypage/modify")
	public String modify(String id, String pw, String tel, String postCode, String rNameAddr, String detailAddr) throws Exception {
		//회원정보 수정란에서 받은 정보를 dto에 저장하여 전달(db UPDATE)후 메인페이지로 이동
		MemberDto dto= new MemberDto(); 
		dto.setUser_id(id);
		dto.setUser_pw(pw);
		dto.setUser_phone_number(tel);
		dto.setUser_postcode(postCode);
		dto.setUser_rNameAddr(rNameAddr);
		dto.setUser_detailAddr(detailAddr);
		
		memberService.ModifyMemberInfo(dto);

		return "redirect:/";
		
	}
	

	//마이페이지3 : 회원탈퇴 완료
	@RequestMapping("/mypage/withdraw")
	public String withdraw(HttpSession session, HttpServletRequest request) throws Exception {
		//비 정상적 접근 차단
		if (!YccMethod.loginSessionCheck(request))
			return "redirect:/login?toURL=" + request.getRequestURL();
		
		//tb_user테이블에서 session에 저장된 id와 같은 user_id를 가진 회원을 삭제시킨후 세션을 종료시킴
		memberService.withdraw((String) session.getAttribute("id"));
		session.invalidate();
		return "member/withdraw";
	}
	//마이페이지4 : 내 수강목록
	@RequestMapping("/mypage/mycourse")
	public String myCourse(HttpServletRequest request)	{
		if(!YccMethod.loginSessionCheck(request)) 
			return "redirect:/login?toURL="+request.getRequestURL();
		return "member/mypage4";
	}
	//마이페이지5 : id/pw 찾기
	@RequestMapping("/mypage/forget")
	public String forget() {
		return "member/forget";
 	}
	
	// 나의 문의 내역 - 기간별 조회
			@GetMapping("/mypage/inquiry")
			public String inquiryHistory(String settedInterval,HttpSession session, Model m, 
					HttpServletRequest request, String startDate, String endDate) {
				//로그인 여부 확인
				if (!YccMethod.loginSessionCheck(request))
					return "redirect:/login/login?toURL=" + request.getRequestURL();
				
				
				try {
					//서비스 메소드에 파라미터로 넣어줄 id,디폴트 settedInterval(1개월) 불러오기
					String id = (String) session.getAttribute("id");
					InquiryDto inquiryDto = new InquiryDto();
					
					if(settedInterval == null) {
						settedInterval = inquiryDto.getSettedInterval();
					}
					//1개월,3개월 버튼을 클릭했을 때 동작(name="settedInterval")
					if (settedInterval.equals("3month") || settedInterval.equals("6month")) {
						
						
						List<InquiryDto> inqList = inquiryService.getPage(id, settedInterval);
						m.addAttribute("inqList", inqList);
						
						return "member/inquiryHistory";
					}
					else if (startDate != null && endDate != null &&!startDate.equals("") && !endDate.equals("")) {
					
						//String으로 받은 날짜를 Date로 형변환
						Date sd =YccMethod.str_toDate(startDate);
						Date ed = YccMethod.str_toDate(endDate);
						
						List<InquiryDto> inqList = inquiryService.getPageByInput(id, sd, ed);
						
						m.addAttribute("inqList", inqList);
						m.addAttribute("startDate",startDate);
						m.addAttribute("endDate",endDate);
						

						return "member/inquiryHistory";
					}
					
					List<InquiryDto> inqList = inquiryService.getPage(id, inquiryDto.getSettedInterval());
					m.addAttribute("inqList", inqList);
					
					return "member/inquiryHistory";

				} catch (Exception e) {
					e.printStackTrace();
				}

				return "member/inquiryHistory";
			}
	
	//1:1 문의 작성 페이지
	@RequestMapping("/mypage/inquiry/write")
	public String inquiryWrite(HttpServletRequest request) {
		if(!YccMethod.loginSessionCheck(request)) 
			return "redirect:/login?toURL="+request.getRequestURL();
		return "member/inquiryWrite";
	}
	//1:1 문의글 읽기 페이지
	@RequestMapping("/mypage/inquiry/read")
	public String inquiryRead(HttpServletRequest request) {
		if(!YccMethod.loginSessionCheck(request)) 
			return "redirect:/login?toURL="+request.getRequestURL();
		return "member/inquiryWrite";
	}
}
