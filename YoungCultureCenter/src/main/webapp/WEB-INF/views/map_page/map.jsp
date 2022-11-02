<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>찾아오시는 길</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="resources\css\map.css" />

</head>

<body>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
 
	<!-- header inlcude -->
	<%@include file="/WEB-INF/views/header.jsp"%>



<!-- 오시는길 -->
<!-- * 카카오맵 - 지도퍼가기 -->
<!-- 1. 지도 노드 -->
	<div id="daumRoughmapContainer1666269316508" class="root_daum_roughmap root_daum_roughmap_landing" style="margin: auto;">
		<ul class="list-group list-group-flush" style="margin: 20px 0 20px 0;">
			<li class="list-group-item0">오시는 길</li><br><br>
			<li class="list-group-item"><img src="resources\img\map\bus_icon.png" class="map_img"> 서울 서초구 서초대로77길 55 에이프로스퀘어 3층 </li><br>
			<li class="list-group-item"><img src="resources\img\map\subway_icon.png" class="map_img"> 2호선 강남역 하차<br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;9호선&신분당선 신논현역 하차 </li><br>
			<li class="list-group-item"><img src="resources\img\map\bus_icon.png" class="map_img"> 146번, 4312번, 9711번 하차  </li><br>
			<li class="list-group-item"><img src="resources\img\map\busstop_icon.png" class="map_img"> 신논현역.구교보타워사거리/신논현역.씨티은행<br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;신논현역.영신빌딩 </li><br>
		</ul>
	</div>

<!--
	2. 설치 스크립트
	* 지도 퍼가기 서비스를 2개 이상 넣을 경우, 설치 스크립트는 하나만 삽입합니다.
-->
<script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>

<!-- 3. 실행 스크립트 -->
<script charset="UTF-8">
	new daum.roughmap.Lander({
		"timestamp" : "1666269316508",
		"key" : "2c575",
		"mapWidth" : "640",
		"mapHeight" : "360"
	}).render();
</script>

<!-- 지도 밑 글자 -->


</body>


<!-- footer 시작 -->
<div class="bg-light mt-5 border-top border-1" >
	<div class="container">
			<footer class="d-flex flex-wrap justify-content-between align-items-center my-1" >

					<p class="col-md-4 mb-0 text-muted">
							<img class="img-fluid" src="..\img\로고.png" style="width: 100px; height: 100px;"><br>
							서울특별시 서초구 서초4 서초대로77길<br>
							Tel : 02-123-1234 / Fax : 02-123-1235<br>
							사업자등록번호 : 123-80-12345<br>
							김영채 최나리 전수정 김성호 최선혜 김지호<br>
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