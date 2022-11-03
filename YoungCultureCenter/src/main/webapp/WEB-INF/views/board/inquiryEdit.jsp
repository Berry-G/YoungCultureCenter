<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <!-- head & meta tag include -->
    <%@include file="/WEB-INF/views/metahead.jsp"%>
    
    
    <title>1:1 문의 작성하기</title>
  </head>
  <body>
  
      <!-- include header -->
<%@include file="/WEB-INF/views/header.jsp"%>


	<!-- 1:1 문의 작성 폼  -->
   <div class="container mt-3">
    <h2>1:1 문의</h2>
    <hr>
  </div>
    <div class="container border border-secondary rounded" >
     <br>
      *는 필수항목입니다.
      <hr>
          <ul style="list-style-type:none;">
            <li>
              <p>문의 유형: * </p>
              <div class="row">
              <select
                name="inq_type_main"
                class="form-select form-select-sm me-lg-1"
                style="display: inline;width: 30%;margin-left: 1em;"
                required>
                <option value="">문의 유형</option>
                <option value="Payment">결제</option>
                <option value="Class">교육강좌</option>
                <option value="Etc">기타</option>
              </select>
              <select
              name="inq_type_sub"
              class="form-select form-select-sm"
              style="display: inline;width: 30%;"
              required>
              <option value="">분류 선택</option>
              <option value="Refund">결제 취소, 환불</option>
              <option value="Application Inquiry">영수증 발급</option>
              <option value="Ticket Inquiry">결제수단 변경</option>
            </select>
              </div>
            </li>
            <hr>
            <li>
              <p>문의 내용: * </p>
              <input
              type="text"
              class="form-control mb-2"
              placeholder="제목을 입력해주세요"
            /></li>
            <li>
              <textarea
          class="form-control"
          aria-label="With textarea"
          style="height: 400px; margin-bottom: 10px"
          placeholder="내용을 입력하세요"
        ></textarea>
            </li>
            <li>
              <div class="mb-3">
                <label for="formFileMultiple" class="form-label">파일 첨부:</label>
                <input class="form-control" type="file" id="formFileMultiple" multiple>
              </div>
            </li>
            <li>
              <button class="btn btn-primary" onclick="location.href='./history'">등록</button>
            </li>
          </ul>

      </div>




	<!-- footer inlcude -->
<%@include file="/WEB-INF/views/footer.jsp"%>
	  
  </body>
</html>