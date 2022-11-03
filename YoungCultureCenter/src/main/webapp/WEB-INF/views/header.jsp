<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<header>
	<!-- 부트스트랩 실행 코드 -->
	<script src="resources/js/bootstrap.bundle.min.js"></script>

	<!-- header -->
	<nav class="navbar navbar-expand-lg bg-light">
	  <div class="container-fluid">
			<!-- 로고 이미지 -->
			<a href="#"><img src="/ycc/resources/img/main_img/logo.png" alt="Young문화센터로고" style="width: 40px; height: 40px;"></a> 
	    <button class="navbar-toggler ms-auto" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
	      <span class="navbar-toggler-icon"></span>
	    </button>
			<!-- 헤더 드롭다운 -->
	    <div class="collapse navbar-collapse nav justify-content-center" id="navbarNavDropdown">
	      <ul class="navbar-nav mx-auto w-25">
	        <li class="nav-item dropdown">
	          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">시설안내</a>
						<ul class="dropdown-menu">
	            <li><a class="dropdown-item" href="map">오시는 길</a></li>
	          </ul>
	        </li>
	        <li class="nav-item dropdown">
	          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">교육강좌</a>
						<ul class="dropdown-menu">
	            <li><a class="dropdown-item" href="course/courseinfo">강좌신청안내</a></li>
	            <li><a class="dropdown-item" href="#">강좌일정</a></li>
	            <li><a class="dropdown-item" href="course/courseSearch">강좌검색</a></li>
							<li><a class="dropdown-item" href="search">통합검색</a></li>
	          </ul>
	        </li>
					<li class="nav-item dropdown">
	          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">시설예약</a>
						<ul class="dropdown-menu">
	            <li><a class="dropdown-item" href="#">대관이용안내</a></li>
	            <li><a class="dropdown-item" href="rental/place">대관현황</a></li>
	            <li><a class="dropdown-item" href="rental/studyRoom">독서실예약</a></li>
							<li><a class="dropdown-item" href="rental/ lockerinfo">사물함신청</a></li>
	          </ul>
	        </li>
	        <li class="nav-item dropdown">
	          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">커뮤니티</a>
	          <ul class="dropdown-menu">
	            <li><a class="dropdown-item" href="course/detail">수강상세</a></li>
	            <li><a class="dropdown-item" href="#">동아리</a></li>
	          </ul>
	        </li>
					<li class="nav-item dropdown">
	          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">이용안내</a>
	          <ul class="dropdown-menu">
	            <li><a class="dropdown-item" href="board/notice">공지사항</a></li>
	            <li><a class="dropdown-item" href="board/event">이벤트/행사</a></li>
	            <li><a class="dropdown-item" href="#">자주하는질문</a></li>
							<li><a class="dropdown-item" href="#">1:1문의</a></li>
	          </ul>
	        </li>
	      </ul>
	      
	      	<!-- 로그인 / 회원가입 -->
			<ul class="nav justify-content-end ms-auto">
				<li class="nav-item">
					<a class="nav-link active" aria-current="page" href="/login">로그인</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="member/signin1">회원가입</a>
				</li>
			</ul>
	    </div>
	

	
	  </div>
	</nav>
	
</header>
