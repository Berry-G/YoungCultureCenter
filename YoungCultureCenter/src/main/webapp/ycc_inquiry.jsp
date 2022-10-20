<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="Content-Script-Type" content="text/javascript" />
    <meta http-equiv="Content-Style-Type" content="text/css" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <link rel="stylesheet" type="text/css" href="css/contents.css" />
    <script type="text/javascript" src="/js/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="/js/default.js"></script><!-- 메뉴 -->
    <script type="text/javascript" src="/js/main.js"></script><!-- 메인이미지 -->
    <script type="text/javascript" src="/js/common.js"></script><!-- 공지사항 -->
  
    <script type="text/javascript">
      function printElem(options) {
        $(".mapArea").printElement(options);
      }
  
      $(document).ready(function () {
        $(".printBtn").click(function () {
          printElem({
            printMode: "popup",
            leaveOpen: false,
            overrideElementCSS: ["/css/contents.css"]
          });
        });
        // 프로그램탭이동버튼
        $(".map_tab > li").bind("focusin", function (i) {
          var currTab = $(this).index();
          $(this).siblings().removeClass("on");
          $(this).addClass("on");
          $("[id^='mapArea_']").hide();
          $("[id^='mapArea_" + currTab + "']").show();
        });
        $(".map_tab > li").bind("click", function (i) {
          var currTab = $(this).index();
          $(this).siblings().removeClass("on");
          $(this).addClass("on");
          $("[id^='mapArea_']").hide();
          $("[id^='mapArea_" + currTab + "']").show();
        });
      });
    </script>













    <title>1:1 문의 작성하기</title>
    <link rel="stylesheet" href="css/YCC_Inquiry.css">
</head>
<body>


  <!-- header -->
	<div id="header">
		<div class="gnb_top">

			<ul class="util_nav">

				<li><a href='/index.asp'>홈으로</a></li>
				<li><a href='/member/login.asp'>로그인</a></li>
				<li><a href='/member/join.asp'>마이페이지</a></li>


			</ul>

		</div>

		<div class="gnb_wrap">
			<div class="inner">
				<h1><a href="/index.asp"><img id='logo_wh' src="\img\Young문화체육센터 로고.png" alt="YOUNG문화체육센터 로고" /></a></h1>
				<div id="gnb">
					<ul class="gnb">
						<li class='menu'><span><a href="/introduction/introduction01.asp">시설안내</a></span>
							<ul>
								<li><a href="/introduction/introduction01.asp">인사말</a></li>
								<li><a href="/introduction/introduction02.asp">설립목적</a></li>
								<li><a href="/introduction/introduction03.asp">조직도</a></li>
								<li><a href="/introduction/introduction04.asp">오시는길</a></li>
							</ul>
						</li>
						<li class='menu'><span><a href="/utilization/utilization01.asp">교육강좌</a></span>
							<ul>
								<li><a href="/utilization/utilization01.asp">강좌신청안내</a></li>
								<li><a href="/utilization/utilization02.asp">강좌일정</a></li>
								<li><a href="/utilization/utilization03.asp">강좌검색</a></li>
								<li><a href="/utilization/utilization04.asp">통합검색</a></li>
							</ul>
						</li>
						<li class='menu'><span><a href="/lend/lend01.asp">시설예약</a></span>
							<ul>
								<li><a href="/lend/lend01.asp">대관이용안내</a></li>
								<li><a href="/lend/lend02.asp">대관현황</a></li>
								<li><a href="/lend/lend03.asp">대관신청</a></li>
								<li><a href="/lend/lend04.asp">사물함신청</a></li>
							</ul>
						</li>
						<li class='menu'><span><a href="/program/program.asp">커뮤니티</a></span>
							<ul>
								<li><a href="/program/program.asp?course=6">수강상세</a></li>
								<li><a href="/program/program.asp?course=2">동아리</a></li>
							</ul>
						</li>
						<li class='menu'><a href="/board/list.asp?board=notice">이용안내</a>
							<ul>
								<li><a href="/board/list.asp?board=notice">공지사항</a></li>
								<li><a href="/board/list.asp?board=photo">이벤트/행사</a></li>
								<li><a href="/board/list.asp?board=faq">자주하는질문</a></li>
								<li><a href="/board/list.asp?board=q_a">1:1문의</a></li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
			<p class="bgB"></p>
		</div>
	</div>
	<!-- //header -->
	<script language="javascript">


		function GetCookie(name) {
			var nameofcookie = name + "=";
			var x = 0;
			while (x <= document.cookie.length) {
				var y = (x + nameofcookie.length);
				if (document.cookie.substring(x, y) == nameofcookie) {
					if ((endofcookie = document.cookie.indexOf(";", y)) == -1)
						endofcookie = document.cookie.length;
					return unescape(document.cookie.substring(y, endofcookie));
				}
				x = document.cookie.indexOf(" ", x) + 1;
				if (x == 0) break;
			}
			return "";
		}
//-->
	</script>




















    <div class="container">
        <form action="" method="get" enctype="multipart/form-data">
           <p> 
            <h2 id="main">1:1 문의</h2>
            <br/>
            <hr>
              * 는 필수항목입니다.</p>

              <p>
                문의 유형: *
                    <select name="inq_type_main" class="inq_type"  required>
                        <option value="">문의 유형</option>
                        <option value="Payment">결제</option>
                        <option value="Class">교육강좌</option>
                        <option value="Etc">기타</option>
                    </select>
                  <select name="inq_type_sub" class="inq_type"  required>
                      <option value="">분류 선택</option>
                      <option value="Refund">결제 취소, 환불</option>
                      <option value="Application Inquiry">Application Inquiry</option>
                      <option value="Ticket Inquiry">Ticket Inquiry</option>
                  </select>
              
          </p>

            <p>제목: *<input type="title" name="name" required></p>

            <p>
                내용: *<textarea name="message" id="message" placeholder="내용을 입력하세요. 
                " cols="100" rows="20"></textarea>
        
            </p>
            </p>
          <div class="filebox">
            <label for="attatch">+</label>
            <input type="file" id="attatch"> 
          </div>
          <br/><br/><br/>
          <input type="submit" value="완료">
          </div>
        </form>
        
        
</body>

<footer>
	<div id="footer">
		<div class="announcement">
			<div class="announcement_area">
				<ul>
					<li><a href="https://gangnam.go.kr/" target='_blank'><img class="bottom_logo_wh" src="\img\강남구로고.png"
								alt="강남구 로고" /></a></li>
					<li><a href="https://it.ezenac.co.kr/" target='_blank'><img class="bottom_logo_wh" src="\img\이젠it로고.jpg"
								alt="이젠it 로고" /></a></li>
					<li><a href="https://www.mcst.go.kr/" target='_blank'><img class="bottom_logo_wh"
								src="\img\문화체육관광부_국_좌우.jpg" alt="문화체육관광부 로고" /></a></li>
				</ul>
			</div><!-- // announcement_area -->
		</div><!-- // announcement -->
	</div>

<div class="footer_area">
	<div class="left">
		<ul class="footer_util">
			<li class="first B"><a href="/etc/individual_info.asp">개인정보처리방침</a></li>
			<li><a href="/etc/individual_info02.asp">이용약관</a></li>
			<li><a href="/introduction/introduction04.asp">찾아오시는 길</a></li>
			<li><a href="/etc/sitemap.asp">사이트맵</a></li>
		</ul>


		<address>
			사업자등록번호 : 123-45-678912 &nbsp;&nbsp;상호명 : YOUNG문화체육센터 &nbsp;&nbsp;대표자 : Young티브잡스<BR>
			서울 서초구 서초대로 77길 55,에이프로 스퀘어 3층(서초동) &nbsp;&nbsp;우편번호 : 06611 &nbsp;&nbsp;전화번호 : 02-532-6509 &nbsp;&nbsp;
			팩스번호 : 02-2038-0076 &nbsp;&nbsp;<a href='mailto:icsc9100@hotmail.com'>E-mail : ezenac@korea.co.kr</a>
		</address>
		<div class='copy'>Copyright (c) 2022 YOUNG문화체육센터 All right reserved.</div>
	</div>
</div>
</footer>

</html>