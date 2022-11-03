<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
  
   <!-- head & meta tag include -->
    <%@include file="/WEB-INF/views/metahead.jsp"%>
  	<link rel="stylesheet" href="/ycc/resources/css/faq.css" type="text/css"/>
  
    <title>자주 묻는 질문</title>
    
    
  </head>
  <body>

    <!-- include header -->
<%@include file="/WEB-INF/views/header.jsp"%>

    <!-- 자주 묻는 질문 -->
    <div class="container-xl mt-3">
      <h2>자주 묻는 질문 (FAQ)</h2>
      <hr>

      <div class="faq">
        <input id="faq-a" type="checkbox" />
        <label for="faq-a">
          <p class="faq-heading">수강신청은 어떻게 하나요?</p>
          <img class="faq-arrow" src="/ycc/resources/img/rental/plus_icon.png" />
          <p class="faq-text">
            메인페이지 > 교육강좌 > 강좌신청안내 > 수강신청안내
          </p>
        </label>
        <input id="faq-b" type="checkbox" />
        <label for="faq-b">
          <p class="faq-heading">회원정보를 수정하고 싶어요.</p>
          <img class="faq-arrow" src="/ycc/resources/img/rental/plus_icon.png" />
          <p class="faq-text">
            로그인 후 마이페이지에서 회원정보수정 버튼을 통해 변경 가능합니다.
          </p>
        </label>
        <input id="faq-c" type="checkbox" />
        <label for="faq-c">
          <p class="faq-heading">결제 수단을 변경하고 싶어요.</p>
          <img class="faq-arrow" src="/ycc/resources/img/rental/plus_icon.png" />
          <p class="faq-text">
            결제 정보(수강신청 코드, 이름)을 기재하여 1:1 문의를 이용해 주세요.
          </p>
        </label>
        <input id="faq-d" type="checkbox" />
        <label for="faq-d">
          <p class="faq-heading">결제하기를 클릭하면 아무 반응이 없어요.</p>
          <img class="faq-arrow" src="/ycc/resources/img/rental/plus_icon.png" />
          <p class="faq-text">
            결제하기를 클릭하면 결제창이 안 뜨는 경우가 있는데, 팝업차단이 되어
            있는 지 확인해주시기 바랍니다.
          </p>
        </label>
        <input id="faq-e" type="checkbox" />
        <label for="faq-e">
          <p class="faq-heading">
            예약한 독서실 좌석/사물함 번호를 확인하고 싶어요.
          </p>
          <img class="faq-arrow" src="/ycc/resources/img/rental/plus_icon.png" />
          <p class="faq-text">
            메인페이지 > 시설예약 > 사물함신청 / 독서실 좌석예약에서 확인하실 수
            있습니다.
          </p>
        </label>
        <input id="settings" type="checkbox" />
        <input id="faq-f" type="checkbox" />
        <label for="faq-f">
          <p class="faq-heading">예약변경은 어떻게 하나요?</p>
          <img class="faq-arrow" src="/ycc/resources/img/rental/plus_icon.png" />
          <p class="faq-text">
            예약변경은 무료예약일 경우에만 가능합니다. <br />
            예약 내용을 변경하고자 하실 때는 기 신청된 예약을 취소하신 후 다시
            이용신청을 해주셔야 합니다.
          </p>
        </label>
      </div>
    </div>






	<!-- footer inlcude -->
<%@include file="/WEB-INF/views/footer.jsp"%>	



	  
  </body>
</html>