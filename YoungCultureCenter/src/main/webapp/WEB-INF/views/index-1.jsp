<!DOCTYPE html>
<html lang="ko">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta http-equiv="Content-Script-Type" content="text/javascript" />
		<meta http-equiv="Content-Style-Type" content="text/css" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<title>YOUNG문화체육센터</title>
		<!-- 부트스트랩 실행 코드 -->
		<link rel="stylesheet" href="resources/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="resources/css/main.css">
	</head>


	<body>

		<!-- 부트스트랩 실행 코드 -->
		<script src="resources/js/bootstrap.bundle.min.js"></script>

		<!-- header -->
		<nav class="navbar navbar-expand-lg bg-light">
			<div class="container-fluid">
				<!-- 로고 이미지 -->
				<a href="#"><img src="resources\img\main_img\logo.png" alt="Young문화센터로고" class="logo"></a>
				<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
					data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<!-- 헤더 드롭다운 -->
				<div class="collapse navbar-collapse nav justify-content-center" id="navbarNavDropdown">
					<ul class="navbar-nav">
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
								aria-expanded="false">시설안내</a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="<c:url value='/map'/>" >오시는 길</a></li>
							</ul>
						</li>
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
								aria-expanded="false">교육강좌</a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="#">강좌신청안내</a></li>
								<li><a class="dropdown-item" href="#">강좌일정</a></li>
								<li><a class="dropdown-item" href="#">강좌검색</a></li>
								<li><a class="dropdown-item" href="#">통합검색</a></li>
							</ul>
						</li>
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
								aria-expanded="false">시설예약</a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="#">대관이용안내</a></li>
								<li><a class="dropdown-item" href="#">대관현황</a></li>
								<li><a class="dropdown-item" href="#">대관신청</a></li>
								<li><a class="dropdown-item" href="#">사물함신청</a></li>
							</ul>
						</li>
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
								aria-expanded="false">커뮤니티</a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="#">수강상세</a></li>
								<li><a class="dropdown-item" href="#">동아리</a></li>
							</ul>
						</li>
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
								aria-expanded="false">이용안내</a>
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



		<!-- 슬라이드 배너 -->
		<style>
			/* 슬라이드 배너 이미지 크기 */
			.img-fluid {
				/* 슬라이드에 들어가는 이미지 크기 조절*/
				height: 450px;
				width: 100%;
			}
		</style>
		<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="true">
			<div class="carousel-indicators">
				<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active"
					aria-current="true" aria-label="Slide 1"></button>
				<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"
					aria-label="Slide 2"></button>
				<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"
					aria-label="Slide 3"></button>
			</div>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="resources\img\slide\health.jpg" class="img-fluid" alt="달리기 수업 바로가기">
				</div>
				<div class="carousel-item">
					<img src="resources\img\slide\baking.jpg" class="img-fluid" alt="베이킹 수업 바로가기">
				</div>
				<div class="carousel-item">
					<img src="resources\img\slide\coingclass.png" class="img-fluid" alt="코딩수업 바로가기">
				</div>
			</div>
			<button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>



		<!-- 중간 퀵메뉴 -->
		<div class="bannergroup">
			<div class="banner_list">
				<ul id="header_navi" style="text-align: center;">
					<li><a href=""><img class="quik_img" src="resources\img\main_img\application_icon.png"
								alt="수강신청" /><span>수강신청</span></a></li>
					<li><a href=""><img class="quik_img" src="resources\img\main_img\rental_icon.png"
								alt="대관신청" /><span>대관신청</span></a></li>
					<li><a href=""><img class="quik_img" src="resources\img\main_img\club_icon.png"
								alt="동아리" /><span>동아리</span></a></li>
					<li><a href=""><img class="quik_img" src="resources\img\main_img\Locker_icon.png"
								alt="사물함신청" /><span>사물함신청</span></a></li>
					<li><a href=""><img class="quik_img" src="resources\img\main_img\map_icon.png"
								alt="찾아오시는 길" /><span>찾아오시는 길</span></a></li>
				</ul>
			</div><!-- // banner_list -->
		</div><!-- // bannergroup -->



		<!-- 공지사항, 행사/이벤트, 캘린더 -->
		<div class="container" style="display: flex; ">
			<div class="row">

				<!-- 컬럼1 -->
				<div class="col-md-6 shadow p-3 border border-success mb-2 border-opacity-25">
					<div class="mcgs-box">
						<div class="mcgs_bg mc-height">
							<!-- 공지사항 탭 -->
							<ul class="nav nav-tabs" style="margin-bottom: 10px;">
								<li class="nav-item" style="font-size: 15px;">
									<a class="nav-link active" aria-current="page" href="#"><b>공지사항</b></a>
								</li>
								<li class="nav-item ms-auto">
									<a class="nav-link" href="#">더보기</a>
								</li>
							</ul>
							<!-- 공지사항 글 -->
							<div class="tab-content">
								<div id="menu3" class="tab-pane in active">
									<ul class="line fs14">
										<li>
											<a href="/office/gfac/board/gfac_notice/484/view.do" target="_self">2022
												아트프라이즈 강남 운영 용역 선정 공고</a>
										</li>
										<li>
											<a href="/office/gfac/board/gfac_notice/482/view.do" target="_self">2022
												강남페스티벌 별마당패션쇼 운영업체 선정 공고</a>
										</li>
										<li>
											<a href="/office/gfac/board/gfac_notice/480/view.do" target="_self">2022년
												강남예술단 찾아가는 공연 『톡톡! 음악배달부』 7월 선정결과 안내</a>
										</li>
										<li>
											<a href="/office/gfac/board/gfac_notice/479/view.do" target="_self">렌티큘러와
												홀로그램으로 본 세상 - 기술입은 문화교육 프로그램 참가 어린이/청소년 모집(기간연장 ~7/20까지)</a>
										</li>
										<li>
											<a href="/office/gfac/board/gfac_notice/479/view.do" target="_blank">서울 강남도
												DMZ로...강남문화재단 문화체험 프로그램</a>
										</li>
									</ul>
								</div>
							</div> <!-- <div class="tab-content"> 끝 -->
						</div>
					</div>
				</div>

				<!-- 컬럼2 -->
				<div class="col-md-6 shadow p-3 border border-success mb-2 border-opacity-25">
					<div id="menu4" class="tab-pane ">
						<!-- 행사/이벤트 탭 -->
						<ul class="nav nav-tabs" style="margin-bottom: 10px;">
							<li class="nav-item" style="font-size: 15px;">
								<a class="nav-link active" aria-current="page" href="#"><b>행사/이벤트</b></a>
							</li>
							<li class="nav-item ms-auto">
								<a class="nav-link" href="#">더보기</a>
							</li>
						</ul>
						<!-- 행사/이벤트 글 -->
						<ul class="line fs14">
							<li>
								<a href="https://www.gukjenews.com/news/articleView.html?idxno=2576400"
									target="_blank">강남문화재단, 할로윈데이, 도서관에서 즐기는 건 어때</a>
							</li>
							<li>
								<a href="https://www.jeonmae.co.kr/news/articleView.html?idxno=919721"
									target="_blank">강남문화재단, 도곡정보문화도서관 등 할로윈데이 이벤트 진행</a>
							</li>
							<li>
								<a href="https://www.gukjenews.com/news/articleView.html?idxno=2571540"
									target="_blank">강남구, 명사들과 함께하는 2022 브런치 인문학 개최!</a>
							</li>
							<li>
								<a href="https://www.gukjenews.com/news/articleView.html?idxno=2572083"
									target="_blank">강남문화재단, DMZ 생명, 생태, 평화, 문화체험 개최!</a>
							</li>
							<li>
								<a href="http://www.mediapen.com/news/view/762539" target="_blank">서울 강남도 DMZ로...강남문화재단
									문화체험 프로그램</a>
							</li>
							<li>
								<a href="http://www.mediapen.com/news/view/762539" target="_blank">서울 강남도 DMZ로...강남문화재단
									문화체험 프로그램</a>
							</li>
						</ul>
					</div>
				</div>

			</div>
		</div> <!-- <div class="container" style="display: flex; "> 끝 -->

	</body>


	<!-- footer 시작 -->
	<div class="bg-light mt-5 border-top border-1">
		<div class="container">
			<footer class="d-flex flex-wrap justify-content-between align-items-center my-1">

				<p class="col-md-4 mb-0 text-muted">
					<img class="img-fluid" src="resources\img\main_img\logo.png"
						style="width: 100px; height: 100px;"><br>
					서울특별시 서초구 서초4 서초대로77길<br>
					Tel : 02-123-1234 / Fax : 02-123-1235<br>
					사업자등록번호 : 123-80-12345<br>
					김영채 최나리 전수정 김성호 최선혜 김지호 최연희<br>
					<br>
					&copy; YOUNG’teve Jobs All rights reserved
				</p>

				<a href="/"
					class="col-md-4 d-flex align-items-center justify-content-center mb-3 mb-md-0 me-md-auto link-dark text-decoration-none">
					스크롤하는 이미지 구현 부
					<svg class="bi me-2" width="40" height="32">
						<use xlink:href="#bootstrap" />
					</svg>
				</a>

				<ul class="nav col-md-4 justify-content-end">
					<li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Home</a></li>
					<li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Features</a></li>
					<li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Pricing</a></li>
					<li class="nav-item"><a href="#" class="nav-link px-2 text-muted">FAQs</a></li>
					<li class="nav-item"><a href="#" class="nav-link px-2 text-muted">About</a></li>
				</ul>
			</footer>
		</div>
	</div>

</html>