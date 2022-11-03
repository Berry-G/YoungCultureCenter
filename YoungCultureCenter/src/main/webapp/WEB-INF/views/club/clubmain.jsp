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
        <h1 class="text-start">인기 동아리</h1>
        <hr>
        <div class="row" style="height: 280px;">
            <!--인기동아리1 그리드-->
            <div class="col-md-4">
                <!-- 이미지 부분 -->
                <div style="position: relative;">
                    <img class="img-fluid" src="./resource/catclub.jpg">
                    <!-- 겹쳐지는 텍스트 부분 -->
                    <div class="club-info">
                    <div class="club-info px-2">
                        <h2 style="font-size: 2vw">고양이 매니아</h2>
                        <p style="font-size: 0.8vw">동아리장 : 김영채 | 맴버 수 : 50명 |<br>생성일 : 2022-10-23</p>
                    </div>
                </div>

            </div>
            <!--인기동아리2 그리드-->
            <div class="col-md-4">
                <div style="position: relative;">
                    <img class="img-thumbnail" src="./resource/swimclub.jpg">
                    <div class="club-info">
                    <img class="img-fluid" src="./resource/swimclub.jpg">
                    <div class="club-info px-2">
                        <h2 style="font-size: 2vw">수영 동아리</h2>
                        <p style="font-size: 0.8vw">동아리장 : 최나리 | 맴버 수 : 10명 |<br>생성일 : 2022-10-24</p>
                    </div>
                </div>
            </div>
            <!--동아리 추가 틀-->
            <div class="col-md-4 h-100">
                <div style="position: relative;">
                    <img class="img-fluid" src="./resource/add_club.png">
                    <div class="club-info" style="text-align: center">
                        <h2 style="font-size: 3vw">동아리 만들기</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- 내 동아리 -->
    <div class="container mt-5">
        <h1>내 동아리</h1>
        <hr>
        <div class="col-lg-12"">
            <div class="card mb-1">
                <div class="row">
                    <div class="col-md-2">
                        <img src="./resource/ycc_logo.png" class="rounded-2" alt="영문화센터" style="height: 150px; width: 150px; ;">
                        <img src="./resource/ycc_logo.png" class="img-thumbnail rounded-2" alt="영문화센터" style="height: 150px; width: 150px; ;">
                    </div>
                    <div class="card-body col-md-10 text-truncate">
                        <a href="" style="text-decoration: none; text-decoration-color: none;">
                        <h4 class="card-title">영 문화센터 동아리</h4>
                        <p class="card-text"><small class="text-muted">동아리장 : 김영채 | 맴버수 : 7 | 생성일 2022-09-07</small></p> 
                        </a>
                        <p class="card-text"></p> 
                    </div>
                </div>
            </div>

            <div class="card mb-1">
                <div class="row gy-2">
                    <div class="col-md-2">
                        <img src="./resource/ycc_logo.png" class="rounded-2" alt="영문화센터" style="height: 150px; width: 150px; ;">
                    </div>
                    <div class="card-body col-md-10 text-truncate">
                        <a href="" style="text-decoration: none; text-decoration-color: none;">
                        <h4 class="card-title">영 문화센터 동아리</h4>
                        <img src="./resource/swimclub.jpg" class="img-thumbnail rounded-2" alt="수영클럽" style="height: 150px; width: 150px; ;">
                    </div>
                    <div class="card-body col-md-10 text-truncate">
                        <a href="" style="text-decoration: none; text-decoration-color: none;">
                        <h4 class="card-title">수영 동아리</h4>
                        <p class="card-text"><small class="text-muted">동아리장 : 김영채 | 맴버수 : 7 | 생성일 2022-09-07</small></p> 
                        </a>
                        <p class="card-text"></p> 
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    
	<!-- footer inlcude -->
	<%@include file="/WEB-INF/views/footer.jsp"%>

</body>
</html>