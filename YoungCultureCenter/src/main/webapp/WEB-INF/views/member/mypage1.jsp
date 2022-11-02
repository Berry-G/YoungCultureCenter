<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>본인인증</title>
    <link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <style>
        @media (max-width: 767px) {
            #gtc {
                text-align: center !important;
                align-items: center !important;
            }
        }
    </style>
</head>
<body>
    <!-- header include -->
	<%@ include file="/WEB-INF/views/header.jsp" %>

    <!-- body -->
    <div class="container mt-5 text-center">
        <h2 class="text-start">본인인증페이지</h2>
        <hr>
        <form class="row g-3 text-center">
            <div class="col-md-12">
                <div class="row">
                    <div class="col-md-12">
                            <img class="img-fluid" src="resources/img/ico_self_auth.png" alt="본인인증아이콘">
                    </div>
                </div>
            </div>
            <div class="col-md-12 align-self-center">
                <div class="row g-3 bg-light">
                    <div class="col-md-12 align-self-center fs-5">
                        계속하려면 먼저 본인임을 인증하세요.
                    </div>
                    <div class="col-md-4 text-center">
                        <label for="staticEmail2" class="visually-hidden">Email</label>
                        <input type="text" class="form-control-plaintext text-end" id="gtc" value="email@example.com" readonly>
                    </div>
                    <div class="col-md-4">
                        <label for="inputPassword2" class="visually-hidden">Password</label>
                        <input type="password" class="form-control" id="inputPassword2" placeholder="Password">
                    </div>
                    <div class="col-md-4 text-start d-grid d-md-block">
                        <a href="mypage2.html" type="submit" class="btn btn-primary mb-3">확인</a>
                    </div>
                </div>
            </div>
        </form>
    </div>

    <!-- footer include -->
	<%@ include file="/WEB-INF/views/footer.jsp" %>
	
	<script src="resources/js/bootstrap.bundle.min.js" type="text/javascript"></script>
</body>
</html>