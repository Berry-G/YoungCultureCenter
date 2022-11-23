package com.youngtvjobs.ycc.admin;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.youngtvjobs.ycc.common.YccMethod;

@Controller
public class AdminController
{
	//관리자페이지 메인메뉴
	@RequestMapping("/admin")
	public String adminmain(HttpServletRequest request)
	{
		// 로그인 여부 확인
		if (!YccMethod.loginSessionCheck(request))
			return "redirect:/login?toURL=" + request.getRequestURL();
		// 관리자 권한이 없을 때 동작
		if (!YccMethod.loginPermissionCheck("관리자", request))
		{
			return "redirect:/error/403";
		}
		return "admin/adminmain";
	}
	

}
