<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>로그인</title>
    <link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <style>
        @media(max-width: 767px) {
            #left_login {
                border-right: hidden !important;
            }
        }
        @media(min-width: 767px) {
            #d-none {
            	display: none !important;
            }
        }
    </style>
</head>

<body>
	<!-- header include -->
	<%@ include file="/WEB-INF/views/header.jsp" %>

    <!-- login 시작 -->
    <div class="container mt-5">
        <h2>로그인</h2>
        <hr>
        <div class="row">
            <div class="col-md-6" id="left_login" style="border-right: solid 1px rgba(0, 0, 0, .25) ;">
                <form class="w-75 mx-auto" name="loginform" onsubmit="return login();">
                    <div class="row mb-3">
                        <label for="inputEmail3" class="col-sm-3 col-form-label">아이디</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" name="user_id" 
                            id="user_id" placeholder="아이디를 입력해주세요." autofocus required>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label for="inputPassword3" class="col-sm-3 col-form-label">비밀번호</label>
                        <div class="col-sm-9">
                        	<input type="password" class="form-control" name="user_pwd" 
                        	id="user_pwd" placeholder="비밀번호를 입력해주세요." required>
                        </div>    	   					
                    </div>
                    <fieldset class="row mb-3">
                        <div>
                            <div class="form-check-inline">
                                <input class="form-check-input" type="checkbox" name="save_id" id="gridRadios1" value="option1">
                                <label class="form-check-label" for="gridRadios1">아이디 저장</label>
                            </div>
                            <div class="form-check-inline">
                                <input class="form-check-input" type="checkbox" name="auto_login" id="gridRadios2" value="option2">
                                <label class="form-check-label" for="gridRadios2">자동로그인</label>
                            </div>
                            <button type="submit" class="btn btn-primary float-end" onclick="login();">로그인</button>
                        </div>
                    </fieldset>
                    <hr>
                    <div class="mx-auto" id="bottom-login">
                        <div>
                            <span>아이디 / 비밀번호를 잊으셨나요?</span>
                            <a href="idpwFind.html">아이디/비밀번호 찾기</a>
                        </div>
                        <div>
                            <span>회원가입을 안하셨나요?</span>
                            <a href="signup.html">회원가입</a>
                        </div>
                    </div>
                    <hr id="d-none">
                </form>
            </div>
            <div class="col-md-6">
                <div class="w-75 mx-auto">
                    <h3>SNS계정으로 로그인</h3>
                    <div class="d-grid gap-3">
                        <button class="btn btn-danger btn-lg" type="button">구글계정으로 로그인</button>
                        <button class="btn btn-success btn-lg" type="button">네이버계정으로 로그인</button>
                        <button class="btn btn-warning btn-lg" type="button">카카오계정으로 로그인</button>
                    </div>
                </div>
            </div>
        </div>
        <hr>
    </div>

	<!-- footer include -->
	<%@ include file="/WEB-INF/views/footer.jsp" %>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
        
    <script type="text/javascript">
        function login() {
            frm = document.loginform
            if (frm.user_id.value == "") {
                alert("ID를 입력해주세요.");
                frm.user_id.focus();
                return false;
            } else if (frm.user_pwd.value == "") {
                alert("비밀번호를 입력해주세요.");
                frm.user_pwd.focus();
                return false;
            } else {
                frm.submit();
            }
        }
    </script>
</body>

</html>























