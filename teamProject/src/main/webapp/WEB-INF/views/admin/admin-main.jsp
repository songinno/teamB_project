<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <%@ include file="../include/admin-static-head.jsp" %>
    <!-- Bootstrap css -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .wrap {
            width: 70%;
            margin: 0 auto;
            /* position: relative; */
        }
        .logo-box {
            /* background: skyblue; */
            margin: 0 auto;
            text-align: center;
            padding-top: 160px;
        }
        .wrap section {
            padding: 100px 200px;
            border: 4px solid #ff9b30;
            height: 50vh;
            border-radius: 5px;

            position: absolute;
            left: 50%;
            top: 50%;
            transform: translate(-50%, -50%);
        }

        .wrap section h1 {
            color: #0d1a40;
        }

        .wrap section .btn-box {
            width: 80%;
            margin-top: 60px;
        }

        .wrap section .btn-box button {
            display: block;
            margin-bottom: 30px;
        }

        .wrap section .btn-box button a {
            color: white;
            text-decoration: none;
        }
    </style>
</head>

<body>
    <div class="wrap">

        <div class="logo-box">
            <h1 class="logo">
                <a href="/admin/movies/list">
                    <img src="/img/main_logo.png" alt="무비피디아 로고이미지">
                </a>
            </h1>
        </div>

        <section>
            <h1>무비피디아 관리자 페이지입니다.</h1>

            <div class="btn-box">
                <button class="btn btn-dark">
                    <a href="/admin/members/list"> 1. 회원관리</a>
                </button>

                <button id="to-list" type="button" class="btn btn-dark">
                    2. 영화 관리페이지 이동
                </button>
            </div>

        </section>

    </div>



    <script>
        //관리페이지 이동 버튼 이벤트
        const $toList = document.getElementById('to-list');
        $toList.onclick = e => {
            location.href = '/admin/movies/list';
        };
    </script>
</body>

</html>