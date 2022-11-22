package com.youngtvjobs.ycc.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class YccMethod
{
	//세션 체크해서 로그인 여부 확인
	public static boolean loginSessionCheck(HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		return session != null && session.getAttribute("id") != null;
	}
}
