<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <%@ include file="../include/static-head.jsp" %>
    <title>Join</title>
    <style>
        .join-wrapper {
            height: 100vh;
            background: #eeeeee;
            border: 8px solid #0d1a40;
        }

        .join-box {
            width: 30%;
            height: 500px;

            position: fixed;
            left: 50%;
            top: 50%;
            transform: translate(-50%, -50%);
        }

        .join-box h1 {
            margin-top: 50px;
            text-align: center;
        }

        .join-box form {
            margin-top: 50px;
            /* background: red; */
        }

        .join-box form .mb-3 {
            /* background: yellow; */
            width: 80%;
            text-align: center;
            margin: 30px auto 0;
            font-weight: bold;
        }

        .join-box form .mb-3 label {
            color: red;
            margin-top: 5px;
        }

        .join-box .col-auto {
            text-align: center;
            /* margin-bottom: 80px; */
        }

        .join-box .col-auto .btn {
            background: #ff9b30;
            border: none;
        }

    </style>
</head>

<body>
    <div class="wrap">
        <div class="join-wrapper">
            <!-- join-box -->
            <div class="join-box">
                <h1>
                    <a href="/">
                        <img src="/img/main_logo.png" alt="무비피디아 로고이미지">
                    </a>
                </h1>

                <!-- 회원가입 form -->
                <form id="join-form" action="/join" method="post" onsubmit="return pwCheck();">
                    <div class="mb-3">
                        <input type="text" name="memName" class="form-control" id="input-name" placeholder="이름"
                            autocomplete="off" required minlength="2" maxlength="6" size="8">
                        <!-- 2~6글자로 막아놓음. -->
                    </div>
                    <div class="mb-3">
                        <input type="email" name="memEmail" class="form-control" id="input-email" placeholder="이메일"
                            autocomplete="off">
                    </div>
                    <div class="mb-3">
                        <input type="password" name="memPassword" class="form-control" id="input-pw1" placeholder="비밀번호"
                            autocomplete="off">
                    </div>
                    <div class="mb-3">
                        <input type="password" class="form-control" id="input-pw2" placeholder="비밀번호 재입력"
                            autocomplete="off">
                        <label for="input-pw2" class="form-label hide" id="label-pw2">
                            <span class="lnr lnr-warning"></span> 비밀번호가 일치하지 않습니다.
                        </label>
                    </div>

                    <div class="col-auto">
                        <button type="submit" class="btn btn-primary mb-3">회원가입</button>
                    </div>

                </form>
            </div>
        </div>
    </div>
    <script>
        //유효성 검사는 부트스트랩이 얼추 해줌ㄷㄷ, 그런데 비밀번호 형식(특수문자 섞고 그런거)는 나중에 해봐야할듯.

        //*비밀번호 두개 같이 입력했나 확인하는 함수
        function pwCheck() {
            const $pw1 = document.getElementById('input-pw1');
            const $pw2 = document.getElementById('input-pw2');

            if ($pw1.value !== $pw2.value) {
                console.log('둘이 다릅니다.');
                console.log($pw1.value);
                console.log($pw2.value);
                document.getElementById('label-pw2').classList.remove('hide');
                $pw2.focus();
                return false;
            }
            console.log('둘이 같습니다');
            return true;
        }
    </script>
</body>

</html>