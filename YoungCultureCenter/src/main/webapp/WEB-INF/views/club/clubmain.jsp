<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <style>
        .club-info {           
            background-color: rgba(0, 0, 0, 0.5);
            color: aliceblue;
            text-align: left;
            position: absolute;
            bottom: 0%;
            width: 100%;
        }
    </style>

    <title>이젠문화센터 - 동아리 메인</title>
</head>

<body>

    <nav class="navbar navbar-expand-lg bg-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Navbar</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Link</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                            aria-expanded="false">
                            Dropdown
                        </a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="#">Action</a></li>
                            <li><a class="dropdown-item" href="#">Another action</a></li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>
                            <li><a class="dropdown-item" href="#">Something else here</a></li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled">Disabled</a>
                    </li>
                </ul>
                <form class="d-flex" role="search">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
            </div>
        </div>
    </nav>

    <div class="container text-center">
        <div class="row gy-2">
            <!--인기동아리1 틀-->
            <div class="col-md-4">
                <!-- 이미지 부분 -->
                <div style="position: relative;">
                    <img class="img-thumbnail" src="./resource/catclub.jpg">
                    <!-- 겹쳐지는 텍스트 부분 -->
                    <div class="club-info" >
                        <h2 style="font-size: 2vw">고양이 매니아</h2>
                        <p style="font-size: 0.8vw">동아리장 : 김영채 | 맴버 수 : 50명 |<br>생성일 : 2022-10-23</p>
                    </div>
                </div>

            </div>
            <!--인기동아리2 틀-->
            <div class="col-md-4">
                <div style="position: relative;">
                    <img class="img-thumbnail" src="./resource/swimclub.jpg">
                    <div class="club-info" >
                        <h2 style="font-size: 2vw">수영 동아리</h2>
                        <p style="font-size: 0.8vw">동아리장 : 최나리 | 맴버 수 : 10명 |<br>생성일 : 2022-10-24</p>
                    </div>
                </div>
            </div>
            <!--동아리 추가 틀-->
            <div class="col-md-4">
                <div style="position: relative;">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                        class="bi bi-plus-circle-fill" viewBox="0 0 16 16">
                        <path
                            d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM8.5 4.5a.5.5 0 0 0-1 0v3h-3a.5.5 0 0 0 0 1h3v3a.5.5 0 0 0 1 0v-3h3a.5.5 0 0 0 0-1h-3v-3z" />
                    </svg>
                    <div class="club-info" style="text-align: center">
                        <h2 style="font-size: 3vw">동아리 만들기</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <footer class="d-flex flex-wrap justify-content-between align-items-center py-3 my-4 border-top">
            
            <p class="col-md-4 mb-0 text-muted">
                <img class="img-fluid" src="./resource/ycc_logo.png" style="width: 100px; height: 100px;"><br>
                서울특별시 서초구 서초4 서초대로77길<br>
                Tel : 02-123-1234 / Fax : 02-123-1235<br>
                사업자등록번호 : 123-80-12345<br>
                김영채 최나리 전수정 김성호 최선혜<br>
                <br>
                &copy; YOUNG’teve Jobs All rights reserved
                </p>

            <a href="/"
                class="col-md-4 d-flex align-items-center justify-content-center mb-3 mb-md-0 me-md-auto link-dark text-decoration-none">
                스크롤하는 이미지 구현 부
                <svg class="bi me-2" width="40" height="32">
                    <use xlink:href="#bootstrap" />
                </svg>
            </a>

            <ul class="nav col-md-4 justify-content-end">
                <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Home</a></li>
                <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Features</a></li>
                <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Pricing</a></li>
                <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">FAQs</a></li>
                <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">About</a></li>
            </ul>
        </footer>
    </div>

</body>

</html>