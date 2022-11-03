<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 부트스트랩 CSS only -->
    <link rel="stylesheet" href="<c:url value='/resources/css/bootstrap.min.css' />">
    <!-- 커스텀 스타일 (재정의) -->
    <link rel="stylesheet" href="<c:url value='/resources/css/courseSearch.css' />">
<title>YOUNG문화체육센터</title>
</head>

<body>

<!-- header inlcude -->
<%@include file="/WEB-INF/views/header.jsp"%>


  <!-- 캘린더 모달창 -->
  <!-- Button trigger modal -->
<!-- <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
  Launch demo modal
</button>
<div class="modal" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable">
    <div class="modal-content">
      <div class="modal-header my-3" style="align-items: center;">
        <h1 class="modal-title fs-3 ps-5 mt-3 fw-bold" id="exampleModalLabel">강좌 일정</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body mx-5">
        <table class="table modal-table">
          <thead class="table-light">
            <tr>
              <th scope="col-6">강좌명</th>
              <th scope="col-3">수강기간</th>
              <th scope="col-3">접수기간</th>
            </tr>
          </thead>
          <tbody class="table-group-divider">
            <tr>
              <td><a href="">수영 기초반</a></td>
              <td>2022/10/25 ~ 2022/11/25</td>
              <td>2022/10/25 ~ 2022/11/25</td>
            </tr>
            <tr>
              <td><a href="">수영 기초반</a></td>
              <td>2022/10/25 ~ 2022/11/25</td>
              <td>2022/10/25 ~ 2022/11/25</td>
            </tr>
            <tr>
              <td><a href="">수영 기초반</a></td>
              <td>2022/10/25 ~ 2022/11/25</td>
              <td>2022/10/25 ~ 2022/11/25</td>
            </tr>
            <tr>
              <td><a href="">수영 기초반</a></td>
              <td>2022/10/25 ~ 2022/11/25</td>
              <td>2022/10/25 ~ 2022/11/25</td>
            </tr>
            <tr>
              <td><a href="">수영 기초반</a></td>
              <td>2022/10/25 ~ 2022/11/25</td>
              <td>2022/10/25 ~ 2022/11/25</td>
            </tr>
          </tbody>
        </table>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
      </div>
    </div>
  </div>
</div> -->

    <!-- 본문 -->
    <div class="container">
      <div class="contents" id="container">

        <div class="introduction">
          <h3 class="py-4">개설 강좌</h3>

          <form>
          <div class="intro">
            <div class="col-2"></div>
            <div class="pro_box container">
              <div class="row ms-5 pt-2">
                <div class="col-3">
                  <div class="row">
                    <label for="sidebar-position2" class="col-4 col-form-label">분류</label>
                    <div class="col-8">
                      <select class="form-select form-select-sm col-6 mt-1" aria-label=".form-select-sm example">
                        <option selected>전체</option>
                        <option value="1">수영</option>
                        <option value="2">베이킹</option>
                      </select>
                    </div>
                  </div>
                </div>
                <div class="col-3">
                  <div class="row">
                    <label for="sidebar-position2" class="col-4 col-form-label">수강대상</label>
                    <div class="col-8">
                      <select class="form-select form-select-sm mt-1" aria-label=".form-select-sm example">
                        <option selected>전체</option>
                        <option value="1">성인</option>
                        <option value="2">학생</option>
                        <option value="3">영유아</option>
                      </select>
                    </div>
                  </div>
                </div>  
                <div class="col-3">
                  <div class="row">
                    <label for="sidebar-position3" class="col-4 col-form-label">접수상태</label>
                    <div class="col-8">
                      <select class="form-select form-select-sm mt-1" aria-label=".form-select-sm example">
                        <option selected>전체</option>
                        <option value="1">접수가능</option>
                        <option value="2">오픈예정</option>
                        <option value="3">접수마감</option>
                      </select>
                    </div>
                  </div>
                </div>
                <div class="col-3">
                  <button type="reset" class="btn btn-danger btn-sm mt-1">초기화</button>
                </div>
              </form>

              </div>
              <div role="search" class="row mx-5 py-2">
                <div class="col-10">
                  <input class="form-control form-control-sm me-2" type="search" placeholder="검색" aria-label="Search">
                </div>
                <div class="col-2">
                  <button class="btn btn-primary btn-sm" type="submit">검색</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <select class="form-select form-select-sm my-3 float-end" aria-label=".form-select-sm example" style="width: 100px;">
        <option selected>최신순</option>
        <option value="1">강좌명순</option>
        <option value="2">평점순</option>
      </select>

      <table class="table">
        <thead class="table-light">
          <tr>
            <th scope="col">강좌명</th>
            <th scope="col">요일</th>
            <th scope="col">시간</th>
            <th scope="col">강사명</th>
            <th scope="col">수강료</th>
            <th scope="col">상태</th>
          </tr>
        </thead>
        <tbody class="table-group-divider">
          <tr>
            <td class="al"><a href="<c:url value='/course/courseDetail' />">초코칩 스콘 만들기</a></td>
            <td>월</td>
            <td>11:30 ~ 12:30</td>
            <td>전수정</td>
            <td>66,000 원</td>
            <td><button type="button" class="btn btn-primary btn-sm" value="접수가능">접수가능</button></td>
          </tr>
          <tr>
            <td class="al"><a href="#" onclick="alert('이미 마감된 강좌입니다.')">배드민턴 기초반</a></td>
            </td>
            <td>월, 수, 금</td>
            <td>18:30 ~ 19:30</td>
            <td>최선혜</td>
            <td>66,000 원</td>
            <td><button type="button" class="btn btn-secondary btn-sm" value="접수마감" disabled>접수마감</button></td>
          </tr>
          <tr>
            <td class="al"><a href=''>수영 기초반</a></td>
            <td>월, 수, 금</td>
            <td>07:00 ~ 07:50</td>
            <td>김지호</td>
            <td>89,000 원</td>
            <td><button type="button" class="btn btn-primary btn-sm" value="접수가능">접수가능</button></td>
          </tr>
          <tr>
            <td class="al"><a href=''>수영 기초반</a></td>
            <td>월, 수, 금</td>
            <td>07:00 ~ 07:50</td>
            <td>김지호</td>
            <td>89,000 원</td>
            <td><button type="button" class="btn btn-primary btn-sm" value="접수가능">접수가능</button></td>
          </tr>
          <tr>
            <td class="al"><a href=''>수영 기초반</a></td>
            <td>월, 수, 금</td>
            <td>07:00 ~ 07:50</td>
            <td>김지호</td>
            <td>89,000 원</td>
            <td><button type="button" class="btn btn-primary btn-sm" value="접수가능">접수가능</button></td>
          </tr>
          <tr>
            <td class="al"><a href=''>수영 기초반</a></td>
            <td>월, 수, 금</td>
            <td>07:00 ~ 07:50</td>
            <td>김지호</td>
            <td>89,000 원</td>
            <td><button type="button" class="btn btn-primary btn-sm" value="접수가능">접수가능</button></td>
          </tr>
          <tr>
            <td class="al"><a href=''>수영 기초반</a></td>
            <td>월, 수, 금</td>
            <td>07:00 ~ 07:50</td>
            <td>김지호</td>
            <td>89,000 원</td>
            <td><button type="button" class="btn btn-primary btn-sm" value="접수가능">접수가능</button></td>
          </tr>
          <tr>
            <td class="al"><a href=''>수영 기초반</a></td>
            <td>월, 수, 금</td>
            <td>07:00 ~ 07:50</td>
            <td>김지호</td>
            <td>89,000 원</td>
            <td><button type="button" class="btn btn-primary btn-sm" value="접수가능">접수가능</button></td>
          </tr>
          <tr>
            <td class="al"><a href=''>수영 기초반</a></td>
            <td>월, 수, 금</td>
            <td>07:00 ~ 07:50</td>
            <td>김지호</td>
            <td>89,000 원</td>
            <td><button type="button" class="btn btn-primary btn-sm" value="접수가능">접수가능</button></td>
          </tr>
          <tr>
            <td class="al"><a href=''>수영 기초반</a></td>
            <td>월, 수, 금</td>
            <td>07:00 ~ 07:50</td>
            <td>김지호</td>
            <td>89,000 원</td>
            <td><button type="button" class="btn btn-primary btn-sm" value="접수가능">접수가능</button></td>
          </tr>
        </tbody>
      </table>

      <nav aria-label="Page navigation example" class="my-5">
        <ul class="pagination justify-content-center">
          <li class="page-item">
            <a class="page-link" href="index.html" aria-label="Previous">
              <span aria-hidden="true">&laquo;</span>
            </a>
          </li>
          <li class="page-item active"><a class="page-link" href="">1</a></li>
          <li class="page-item"><a class="page-link" href="">2</a></li>
          <li class="page-item"><a class="page-link" href="">3</a></li>
          <li class="page-item"><a class="page-link" href="">4</a></li>
          <li class="page-item"><a class="page-link" href="index5.html">5</a></li>
          <li class="page-item">
            <a class="page-link" href="index5.html" aria-label="Next">
              <span aria-hidden="true">&raquo;</span>
            </a>
          </li>
        </ul>
      </nav>


    </div>

  </div>


<!-- footer inlcude -->
<%@include file="/WEB-INF/views/footer.jsp"%>


    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
      crossorigin="anonymous"></script>
    <script type="text/javascript" src="/js/default.js"></script>

	<script>
		const myModal = document.getElementById('myModal')
		const myInput = document.getElementById('myInput')
		
		myModal.addEventListener('shown.bs.modal', () => {
		  myInput.focus()
		})
	</script>

</body>
</html>