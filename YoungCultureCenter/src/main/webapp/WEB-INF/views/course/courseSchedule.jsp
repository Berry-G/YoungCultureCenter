<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<!-- head & meta tag include -->
	<%@include file="/WEB-INF/views/metahead.jsp"%>
    
    <link href='/ycc/resources/fullcalendar/main.css' rel='stylesheet' />
    <script src='/ycc/resources/fullcalendar/main.js'></script>
    <script>

      document.addEventListener('DOMContentLoaded', function() {
        var calendarEl = document.getElementById('calendar');
        var calendar = new FullCalendar.Calendar(calendarEl, {
          initialView: 'dayGridMonth'
        });
        calendar.render();
      });

    </script>
<title>Insert title here</title>
</head>
<body>
	<!-- header inlcude -->
	<%@include file="/WEB-INF/views/header.jsp"%>
	<div class="container">
		<h1>강좌일정</h1>
		<hr>
	 	<div id='calendar' class="container"></div>
	</div>
	
	 
	 
	<!-- footer inlcude -->
	<%@include file="/WEB-INF/views/footer.jsp"%>
</body>
</html>