<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <%@ include file="../include/static-head.jsp" %>
    <title>login</title>
    <style>
        .login-wrapper {
            height: 100vh;
            background: #eeeeee;
            border: 8px solid #0d1a40;
        }

        .login-box {
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

                </form>
            </div>
        </div>
    </div>
    <script>
        
    </script>
</body>

</html>