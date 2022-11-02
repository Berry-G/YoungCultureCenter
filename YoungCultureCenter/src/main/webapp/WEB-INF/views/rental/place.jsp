<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Rental Place</title>
<link rel="stylesheet" href="<c:url value='/resources/css/bootstrap.min.css' />">
</head>
<body>
<!-- header inlcude -->
<%@include file="/WEB-INF/views/header.jsp"%>

<body>
  <!-- Modal -->
  <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h1 class="modal-title fs-5" id="exampleModalLabel">정보확인 안내</h1>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <h7>정보확인</h7>
          <div class="container-fluid">
            <table class="table">
              <tr>
                <th>이름</th>
                <td colspan="3">김지호</td>
              </tr>
              <tr>
                <th>시설명</th>
                <td colspan="3">강당</td>
              </tr>
              <tr>
                <th>예약 날짜</th>
                <td colspan="3" onchange="printDate()">
                  <div id="rsdate"></div>
                </td>
              </tr>
              <tr>
                <th>이용 시간</th>
                <td colspan="3">16:00 ~ 18:00</td>
              </tr>
            </table>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
          <button type="button" class="btn btn-primary">확인</button>
        </div>
      </div>
    </div>
  </div>
  
    
  <div class="container">
    <div class="rentalnotice  border border-dark" style="margin: 20px auto 30px auto">
      <ol class="fs-7">
        <h3>대관 신청 시 주의사항</h3>
        <li>수험표를 교부</li>
        <li>시험당일 수험표와 주민등록증 또는 본인임을 입증할 수 있는 신분증을 반드시 지참</li>
        <li>모든 수험생은 시험 당일 시험장 내에서 마스크 착용 등 시험장 방역 지침을 반드시 준수</li>
        <li>모든 수험생은 모든 물품에 대한 관리 절차 및 감독관의 지시에 따라야 함.</li>
        <li>시험장 반입 금지 물품 → 시험장에 가지고 올 수 없는 물품(시험시간, 쉬는 시간 불문하고 적발시 부정행위 처리)</li>
      </ol>
    </div>

    <div class="row mb-3" style="display: flex;">
      <div class="col-6 " id="change">
        <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
          <div class="embed-responsive embed-responsive-4by3">
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img src="<%=request.getContextPath()%>/resources/img/rental/1f.jpg" class="d-block w-100 embed-responsive-item" alt="1층 시설 안내">
              </div>
              <div class="carousel-item">
                <img src="<%=request.getContextPath()%>/resources/img/rental/2f.jpg" class="d-block w-100 embed-responsive-item" alt="2층 시설 안내">
              </div>
              <div class="carousel-item">
                <img src="<%=request.getContextPath()%>/resources/img/rental/3f.jpg" class="d-block w-100 embed-responsive-item" alt="3층 시설 안내">
              </div>
              <div class="carousel-item">
                <img src="<%=request.getContextPath()%>/resources/img/rental/4f.jpg" class="d-block w-100 embed-responsive-item" alt="4층 시설 안내">
              </div>
            </div>
          </div>
          <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls"
            data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">이전</span>
          </button>
          <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls"
            data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">다음</span>
          </button>
        </div>
      </div>
      <!--대여 장소 이미지-->

      <!-- style="background-image: url(auditorium.jpg); background-size: cover;"-->

      <div class="image-box col-6 " id="change2">
        <img src="<%=request.getContextPath()%>/resources/img/rental/auditorium.jpg">
      </div>
    </div>
  </div>
  <div class="container">
    <!--대관 장소 선택 시작-->
    <p>
      <label for="select" style="margin-top: 20px;">대관 장소 선택</label>
      <select id="select">
        <option value="">장소 선택</option>
        <optgroup label="외부">
          <option value="">테니스장A</option>
          <option value="">축구장</option>
          <option value="">농구장</option>
        </optgroup>
        <optgroup label="1층">
          <option value="">101호</option>
          <option value="">강당</option>
          <option value="">다목적실</option>
        </optgroup>
        <optgroup label="2층">
          <option value="">201호</option>
          <option value="">202호</option>
          <option value="">203호</option>
        </optgroup>
        <optgroup label="3층">
          <option value="">301호</option>
          <option value="">302호</option>
          <option value="">소강당</option>
        </optgroup>
      </select>
    </p>
    <!--대관 장소 선택 끝-->

    <!--추후 개발 시 수정할 부분(yyyy-mm-dd 에서 '-'제거 , T~ 제거)-->
    <p>
      <label for="datetime-local">대여 일자 지정</label>
      <input type="datetime-local" id="datetime-local" name="rday" onchange="printDate()">
      <!-- Button trigger modal -->
      <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
        신청하기
      </button>
    </p>

    <div class="rentaldatearea">
      <div id="rsdate"></div>
      <h5>00건의 예약이 있습니다.</h5>
    </div>

    <hr>

    <table class="table table-striped">
      <thead>
        <tr>
          <th scope="col">대관 장소</th>
          <th scope="col">예약 번호</th>
          <th scope="col">시간</th>
          <th scope="col">예약일</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>농구장</td>
          <td>012223</td>
          <td>14:00-16:00</td>
          <td>2022-11-11</td>
        </tr>
        <tr>
          <td>농구장</td>
          <td>012225</td>
          <td>18:00-20:00</td>
          <td>2022-11-11</td>
        </tr>
        <tr>
          <td>농구장</td>
          <td>0122223</td>
          <td>20:00-22:00</td>
          <td>2022-11-11</td>
        </tr>
      </tbody>
    </table>
  </div>

<!-- footer inlcude -->
<%@include file="/WEB-INF/views/footer.jsp"%>
</body>
</html>