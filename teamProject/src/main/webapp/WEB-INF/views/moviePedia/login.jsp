<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <%@ include file="../include/static-head.jsp" %>
    <!-- Bootstrap css -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <title>login</title>
    <style>
        .login-wrapper {
            height: 100vh;
            background: #eeeeee;
            border: 8px solid #0d1a40;
        }

        .login-box {
            /* background: blue; */
            width: 30%;
            height: 500px;

            position: fixed;
            left: 50%;
            top: 50%;
            transform: translate(-50%, -50%);
        }

        .login-box h1 {
            margin-top: 50px;
            text-align: center;
        }

        .login-box form {
            margin-top: 50px;
            /* background: red; */
        }

        .login-box form .mb-3 {
            /* background: yellow; */
            width: 80%;
            text-align: center;
            margin: 30px auto 0;
            font-weight: bold;
        }

        .login-box form .mb-3 label {
            color: red;
            margin-top: 5px;
        }

        .login-box .col-auto {
            text-align: center;
            /* margin-bottom: 80px; */
        }

        .login-box .col-auto .btn {
            background: #ff9b30;
            border: none;
        }
        .result-box {
            /* background: yellow; */
            width: 70%;
            margin: 0 auto;
            font-size: 10px;
            font-weight: bold;
            color: red;
            text-align: center;
            /* display: none; */
        }
        .result-box h2 {
            font-size: 20px;
        }
        .fail {
            display: block !important;
            /* inline이든 block이던 none의 반대는 "" */
        }
    </style>
</head>

<body>
    <div class="wrap">
        <div class="login-wrapper">
            <!-- login-box -->
            <div class="login-box">
                <h1>
                    <a href="/">
                        <img src="/img/main_logo.png" alt="무비피디아 로고이미지">
                    </a>
                </h1>

                <!-- 로그인 form -->
                <form id="login-form" action="/login-check" method="post">
                    <div class="mb-3">
                        <input type="email" name="memEmail" class="form-control" id="input-email" placeholder="이메일"
                            autocomplete="off">
                    </div>
                    <div class="mb-3">
                        <input type="password" name="memPassword" class="form-control" id="input-pw" placeholder="비밀번호"
                            autocomplete="off">
                    </div>
                    <div class="col-auto">
                        <button type="submit" class="btn btn-primary mb-3">로그인</button>
                    </div>
                    <div class="result-box ${result}">
                        <h2>이메일 또는 비밀번호를 확인해주세요</h2>
                    </div>

                </form>
            </div>
            
        </div>
    </div>
    <script>

    </script>
</body>

</html>