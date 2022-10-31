<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- bootstrap css link -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"/>

    <title>나의 문의 내역</title>
     <style>
      .table th {
        background-color: rgb(176, 218, 235);
      }
      .table{
        text-align: center;
      }
    </style>
  </head>

  <body>
    <div class="container">
    <h2>나의 문의 내역</h2>
  </div>
      <!-- 기간별 조회 박스 -->
      <div class="container p-3 text-center mb-3" style="background-color: #b0daeb;">
        <h4 class="mb-3">기간별 조회</h4>
        <div class="row">
          <div class="col-md-3 mb-3">
            <button type="submit" class="btn btn-light">1개월</button>
            <button type="submit" class="btn btn-light">3개월</button>
          </div>
          <div class="col-md-7 mb-3">
            <div class="row">
              <input
              class="form-control-md col-5"
              type="date"
              value="startDate"
            />
            <label class="col-2">~</label>
            <input
              class="form-control-md col-5"
              type="date"
              value="endDate"
            />
            </div>

          </div>
          <div class="col-md-2 mb-3">
            <button type="submit" class="btn btn-primary">조회</button>
          </div>

        </div>


        <div class="row" style="justify-content: center;">
          <div class="col-md-2 mb-3" >
            <select class="form-select-sm" style="height: 2rem;width:80%">
              <option value="title">제목</option>
              <option value="contents">내용</option>
            </select>
          </div>
          <div class="col-md-5 mb-3">
            <input class="form-control-md" type="text" id="search-bar" />
            <button type="submit" class="btn btn-primary">검색</button>
          </div>
        </div>
      </div>


      <!-- 게시판 테이블 -->
      <div class="container">
      <table class="table mt-3">
        <thead>
          <tr>
            <th scope="col">분류</th>
            <th scope="col">제목</th>
            <th scope="col">작성일</th>
            <th scope="col">상태</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>교육강좌</td>
            <td>수강 관련 문의</td>
            <td>2022.02.03</td>
            <td>답변대기</td>
          </tr>
          <tr>
            <td>결제</td>
            <td>결제 관련 문의</td>
            <td>2022.02.03</td>
            <td>답변대기</td>
          </tr>
          <tr>
            <td>결제</td>
            <td>영수증 문의</td>
            <td>2022.01.01</td>
            <td>답변완료</td>
          </tr>
          <tr>
            <td>교육강좌</td>
            <td>수강신청 변경 문의</td>
            <td>2022.01.01</td>
            <td>답변완료</td>
          </tr>
          <tr>
            <td>123</td>
            <td>123</td>
            <td>123</td>
            <td>123</td>
          </tr>
          <tr>
            <td>123</td>
            <td>123</td>
            <td>123</td>
            <td>1231</td>
          </tr>
        </tbody>
      </table>

      <button class="btn btn-primary mt-3 mb-3">글쓰기</button>
    </div>

    <!-- 페이지 네비게이션 -->
    <div class="container">
    <nav aria-label="Page navigation example">
      <ul class="pagination justify-content-center">
        <li class="page-item">
          <a class="page-link" href="#" aria-label="Previous">
            <span aria-hidden="true">&laquo;</span>
          </a>
        </li>
        <li class="page-item"><a class="page-link" href="#">1</a></li>
        <li class="page-item"><a class="page-link" href="#">2</a></li>
        <li class="page-item"><a class="page-link" href="#">3</a></li>
        <li class="page-item">
          <a class="page-link" href="#" aria-label="Next">
            <span aria-hidden="true">&raquo;</span>
          </a>
        </li>
      </ul>
    </nav>
  </div>
    <!-- footer 시작 -->
    <div class="bg-light mt-5 border-top border-1">
      <div class="container">
        <footer
          class="d-flex flex-wrap justify-content-between align-items-center my-1"
        >
          <p class="col-md-4 mb-0 text-muted">
            <img
              class="img-fluid"
              src="./resource/ycc_logo.png"
              style="width: 100px; height: 100px"
            /><br />
            서울특별시 서초구 서초4 서초대로77길<br />
            Tel : 02-123-1234 / Fax : 02-123-1235<br />
            사업자등록번호 : 123-80-12345<br />
            김영채 최나리 전수정 김성호 최선혜 최연희 김지호<br />
            <br />
            &copy; YOUNG’teve Jobs All rights reserved
          </p>

          <a
            href="/"
            class="col-md-4 d-flex align-items-center justify-content-center mb-3 mb-md-0 me-md-auto link-dark text-decoration-none"
          >
            스크롤하는 이미지 구현 부
            <svg class="bi me-2" width="40" height="32">
              <use xlink:href="#bootstrap" />
            </svg>
          </a>

          <ul class="nav col-md-4 justify-content-end">
            <li class="nav-item">
              <a href="#" class="nav-link px-2 text-muted">Home</a>
            </li>
            <li class="nav-item">
              <a href="#" class="nav-link px-2 text-muted">Features</a>
            </li>
            <li class="nav-item">
              <a href="#" class="nav-link px-2 text-muted">Pricing</a>
            </li>
            <li class="nav-item">
              <a href="#" class="nav-link px-2 text-muted">FAQs</a>
            </li>
            <li class="nav-item">
              <a href="#" class="nav-link px-2 text-muted">About</a>
            </li>
          </ul>
        </footer>
      </div>
    </div>
  </body>
</html>
