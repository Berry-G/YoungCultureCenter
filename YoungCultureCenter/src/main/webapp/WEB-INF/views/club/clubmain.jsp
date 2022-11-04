<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<!-- head & meta tag include -->
<%@include file="/WEB-INF/views/metahead.jsp"%>

<style>
.club-info {
	background-color: rgba(0, 0, 0, 0.5);
	color: aliceblue;
	text-align: left;
	position: absolute;
	bottom: 0%;
	width: 100%;
}
</style>

<title>YOUNG문화센터 - 동아리 메인</title>
</head>
<body>
	<!-- header inlcude -->
	<%@include file="/WEB-INF/views/header.jsp"%>

	<!-- 인기동아리, 동아리 추가 부분 -->
	<div class="container text-center">
		<h1 class="text-start mt-5">인기 동아리</h1>
		<hr>
		<div class="row">
			<!--인기동아리1 그리드-->
			<div class="col-md-4">
				<!-- 이미지 부분 -->
				<div style="position: relative;">
					<img class="img-fluid" src="/ycc/resources/img/club/catclub.jpg">
					<!-- 겹쳐지는 텍스트 부분 -->
					<div class="club-info">
						<div class="club-info px-2">
							<h2 style="font-size: 2vw">고양이 매니아</h2>
							<p style="font-size: 0.8vw">
								동아리장 : 김영채 | 맴버 수 : 50명 |<br>생성일 : 2022-10-23
							</p>
						</div>
					</div>
				</div>
			</div>
			<!--인기동아리2 그리드-->
			<div class="col-md-4">
				<div style="position: relative;">
					<img class="img-thumbnail"
						src="/ycc/resources/img/club/swimclub.jpg">
					<div class="club-info">
						<img class="img-fluid" src="/ycc/resources/img/club/swimclub.jpg">
						<div class="club-info px-2">
							<h2 style="font-size: 2vw">수영 동아리</h2>
							<p style="font-size: 0.8vw">
								동아리장 : 최나리 | 맴버 수 : 10명 |<br>생성일 : 2022-10-24
							</p>
						</div>
					</div>
				</div>
			</div>
			<!--동아리 추가 그리드-->
			<div class="col-md-4 h-100">
				<div style="position: relative;">
					<img class="img-fluid" src="/ycc/resources/img/club/add_club.png">
					<div class="club-info" style="text-align: center">
						<h2 style="font-size: 3vw">동아리 만들기</h2>
					</div>
				</div>
			</div>
		</div>

		<!-- 내 동아리 -->
		<h1 class="text-start mt-5">내 동아리</h1>
		<hr>
		<div class="text-start px-4">
			<div class="d-flex me-auto">
				<img src="/ycc/resources/img/club/ycc_logo.png"
					class="img-thumbnail rounded-2 me-3" alt="영문화센터"
					style="height: 150px; width: 150px;">
				<!-- 동아리 이동(제목클릭) -->
				<div class="text-truncate">
					<a href="#"
					style="text-decoration: none; text-decoration-color: none;">
					<h4>영 문화센터 동아리</h4>
					<small class="text-muted">동아리장 : 김영채 | 맴버수 : 7 | 생성일 : 2022-09-07</small> </a>
					<a href="#"><p class="mb-2">가입 인사 합니다.</p></a>
					<a href="#"><p class="mb-2">게시글 제목 2</p></a>
					<a href="#"><p class="mb-2">안녕하세요~안녕하세요~안녕하세요~안녕하세요~안녕하세요~안녕하세요~안녕하세요~안녕하세요~안녕하세요~안녕하세요~안녕하세요~안녕하세요~안녕하세요~</p></a>
				</div>
			</div>
			<hr>
		</div>
		<div class="text-start px-4">
			<div class="d-flex me-auto">
				<img src="/ycc/resources/img/club/swimclub.jpg"
					class="img-thumbnail rounded-2 me-3" alt="영문화센터"
					style="height: 150px; width: 150px;">
				<!-- 동아리 이동(제목클릭) -->
				<div class="text-truncate">
					<a href="#"
					style="text-decoration: none; text-decoration-color: none;">
					<h4>수영 동아리</h4>
					<small class="text-muted">동아리장 : 최나리 | 맴버수 : 22 | 생성일 : 2022-10-07</small> </a>
					<a href="#"><p class="mb-2">가입 인사 합니다. 수영 처음해봐요!</p></a>
					<a href="#"><p class="mb-2">방가방가 가입인사</p></a>
					<a href="#"><p class="mb-2">안녕하세요~안녕하세요~안녕하세요~안녕하세요~안녕하세요~안녕하세요~안녕하세요~안녕하세요~안녕하세요~안녕하세요~안녕하세요~안녕하세요~안녕하세요~</p></a>
				</div>
			</div>
			<hr>
		</div>
		<div class="text-start px-4">
			<div class="d-flex me-auto">
				<img src="/ycc/resources/img/club/catclub.jpg"
					class="img-thumbnail rounded-2 me-3" alt="영문화센터"
					style="height: 150px; width: 150px;">
				<!-- 동아리 이동(제목클릭) -->
				<div class="text-truncate">
					<a href="#"
					style="text-decoration: none; text-decoration-color: none;">
					<h4>고양이 매니아</h4>
					<small class="text-muted">동아리장 : 김영채 | 맴버수 : 7 | 생성일 : 2022-09-07</small> </a>
					<a href="#"><p class="mb-2">우리집 고양이가 너무 귀여워 버린 건에 대하여</p></a>
					<a href="#"><p class="mb-2">털 날리는데 로봇 청소기를 사야할까요? 매일 청소하기 힘들어요</p></a>
					<a href="#"><p class="mb-2">안녕하세요~안녕하세요~안녕하세요~안녕하세요~안녕하세요~안녕하세요~안녕하세요~안녕하세요~안녕하세요~안녕하세요~안녕하세요~안녕하세요~안녕하세요~</p></a>
				</div>
			</div>
			<hr>
		</div>
		
		<!-- 전체 동아리 -->
		<h1 class="text-start mt-5">전체 동아리</h1>
		<hr>	
		
	</div>
	


	<!-- footer inlcude -->
	<%@include file="/WEB-INF/views/footer.jsp"%>
</body>
</html>