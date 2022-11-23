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
	
	/**세션의 권한 체크
	 * 
	 * @param grade
	 * 		세션과 비교하고 싶은 권한을 직접 주입합니다.
	 * @param request
	 * 		세션 속에 있는 grade 를 받아올겁니다.
	 * @return
	 * 		세션이 없거나 등급이 다르면 FALSE 반환합니다.
	 */
	public static boolean permissionCheck(String grade, HttpServletRequest request)
	{
		HttpSession session = request.getSession(false);
		return session != null && session.getAttribute("grade") == grade;
	}
}
