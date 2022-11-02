<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- 부트스트랩 실행 코드 -->
<link rel="stylesheet" href="resources/css/bootstrap.min.css">

<header>
	<!-- 부트스트랩 실행 코드 -->
	<script src="resources/js/bootstrap.bundle.min.js"></script>

	<!-- header -->
	<nav class="navbar navbar-expand-lg bg-light">
	  <div class="container-fluid">
			<!-- 로고 이미지 -->
			<a href="#"><img src="resources/img/main_img/logo.png" alt="Young문화센터로고" class="logo" style="width: 40px; height: 40px;"></a> 
	    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
	      <span class="navbar-toggler-icon"></span>
	    </button>
			<!-- 헤더 드롭다운 -->
	    <div class="collapse navbar-collapse nav justify-content-center" id="navbarNavDropdown">
	      <ul class="navbar-nav">
	        <li class="nav-item dropdown">
	          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">시설안내</a>
						<ul class="dropdown-menu">
	            <li><a class="dropdown-item" href="map">오시는 길</a></li>
	          </ul>
	        </li>
	        <li class="nav-item dropdown">
	          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">교육강좌</a>
						<ul class="dropdown-menu">
	            <li><a class="dropdown-item" href="#">강좌신청안내</a></li>
	            <li><a class="dropdown-item" href="#">강좌일정</a></li>
	            <li><a class="dropdown-item" href="#">강좌검색</a></li>
							<li><a class="dropdown-item" href="#">통합검색</a></li>
	          </ul>
	        </li>
					<li class="nav-item dropdown">
	          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">시설예약</a>
						<ul class="dropdown-menu">
	            <li><a class="dropdown-item" href="#">대관이용안내</a></li>
	            <li><a class="dropdown-item" href="#">대관현황</a></li>
	            <li><a class="dropdown-item" href="#">대관신청</a></li>
							<li><a class="dropdown-item" href="#">사물함신청</a></li>
	          </ul>
	        </li>
	        <li class="nav-item dropdown">
	          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">커뮤니티</a>
	          <ul class="dropdown-menu">
	            <li><a class="dropdown-item" href="#">수강상세</a></li>
	            <li><a class="dropdown-item" href="#">동아리</a></li>
	          </ul>
	        </li>
					<li class="nav-item dropdown">
	          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">이용안내</a>
	          <ul class="dropdown-menu">
	            <li><a class="dropdown-item" href="#">공지사항</a></li>
	            <li><a class="dropdown-item" href="#">이벤트/행사</a></li>
	            <li><a class="dropdown-item" href="#">자주하는질문</a></li>
							<li><a class="dropdown-item" href="#">1:1문의</a></li>
	          </ul>
	        </li>
	      </ul>
	    </div>
	
			<!-- 로그인 / 회원가입 -->
			<ul class="nav justify-content-end">
				<li class="nav-item">
					<a class="nav-link active" aria-current="page" href="#">로그인</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#">회원가입</a>
				</li>
			</ul>
	
	  </div>
	</nav>
	
</header>
