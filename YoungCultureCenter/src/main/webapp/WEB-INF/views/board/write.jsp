<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<!-- head & meta tag include -->
    <%@include file="/WEB-INF/views/metahead.jsp"%>
  	<!--summernote-->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js">	</script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.18/lang/summernote-ko-KR.min.js"></script>
  
  <%
  	String noticeURI = request.getParameter("board");
  	String eventURI = request.getParameter("board");
  %>
<title>글쓰기</title>
</head>

<body>
  	<!-- header inlcude -->
	<%@include file="/WEB-INF/views/header.jsp"%>
  		<!--container start-->
  		<form action='<c:url value="/board/write" />' name="writeForm" method="post">
  			<div class="container mt-5">
    			<h3 class="posttitle pt-3">공지사항 글쓰기</h3>
   				<br>
   					<input type="text" class="form-control mb-3" id="title" name="article_title"
   					 placeholder="제목을 입력해주세요" value="${boardDto.article_title }">
    				<textarea class="summernote mb-3" id="contents" name="article_contents"  >
    				${boardDto.article_contents}</textarea>
    				
				
   				<div class="input-group mb-3 mt-3">
      				<input type="file" class="form-control" id="inputGroupFile02">
      				<label class="input-group-text" for="inputGroupFile02">Upload</label>
    			</div>
	    		<div style="text-align: center;">
	      			<input class="btn btn-primary mx-3" id="regBtn" type="button" onclick="regCheck()" value="등록하기" >
	      			<input class="btn btn-secondary" type="button" value="취소하기">
	    		</div>
  			</div><!--container end-->
  		</form>

  <script>

   //summernot 
  $('.summernote').summernote({
      height: 400,
      lang: "ko-KR"
    });
  
  
  function regCheck() {
	  	//title에 값이 없으면 alert창 띄우고 ,focus
		if($("#title").val()== ""){
			alert("제목을 입력해주세요");
			document.writeForm.article_title.focus();
		}
	  	//contents에 값이 없으면 alert창 띄우고 ,focus
		else if($("#contents").val()==""){
			alert("내용을 입력해주세요");
			document.writeForm.article_contents.focus();
		}
		//title, contents에 값이 있으면 submit 후 alert창 띄우기 
		else if($("#title").val()!="" && $("#contents").val()!="") {
			document.writeForm.submit();
			alert("등록되었습니다.")
		}
				
  }
  </script>
    <!-- footer inlcude -->
  </script>
    <!-- footer inlcude -->
<%@include file="/WEB-INF/views/footer.jsp"%>

</body>

</html>