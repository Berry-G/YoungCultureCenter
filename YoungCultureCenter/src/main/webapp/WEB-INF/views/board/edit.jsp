<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Post Edit</title>
<link rel="stylesheet" href="<c:url value='/resources/css/bootstrap.min.css' />">

<!--summernote-->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.css">
    <!-- header-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.18/lang/summernote-ko-KR.min.js"></script>
</head>
<body>
<body>
  <!-- header inlcude -->
<%@include file="/WEB-INF/views/header.jsp"%>
  <div class="container">
        <main class="mt-5 pt-5">
            <div class="container px-4">
                <h1 class="mt-4">공지사항</h1>
                <div class="card mb-4">
                    <div class="card-body">
                        <label for="title" class="form-label"></label> <input type="text" class="form-control"
                            id="title" name="title" value="저 오늘 치과갑니다">
                        <hr>
                        <p>작성자 : 김지호 | 게시일 : yyyy-mm-dd</p>
                        <div class="bg-light rounded-3 p-3 mb-5">
                            <div class="mb-3">
                                <div class="container">
                                    <textarea class="summernote" name="editordata" style="margin-bottom: 30px;">
내용내용내용내용                                    
                                    </textarea>
                                </div>
                            </div>
                        </div>


                        <div class="position-absolute bottom-0 end-0 m-3">
                            <a href="notice" class="btn btn-outline-secondary">목록으로</a>
                            <a href="modify?bno=${board.bno}" class="btn btn-outline-success">등록하기</a>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>
    <!-- footer inlcude -->
<%@include file="/WEB-INF/views/footer.jsp"%>
<script>
    $('.summernote').summernote({
        height: 400,
        lang: "ko-KR",

    });
</script>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
        crossorigin="anonymous"></script>
</body>
</html>