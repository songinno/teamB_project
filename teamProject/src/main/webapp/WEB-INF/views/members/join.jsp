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

        .join-box .form-box {
            margin-top: 50px;
            /* background: red; */
        }
        .join-box .form-box table tr td p {
            margin-bottom: 8px;
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

                <form action="/join" name="signup" class="form-box" id="signUpForm" method="post"
                    style="margin-bottom: 0;">

                    <!-- <input type="hidden" name="auth" value="COMMON"> -->
                    <!-- 권한을 무조건 hidden으로 COMMON을 주고있음. 관리자 계정으로 회원가입은 SQL에서만 가능하게함. -->

                    <table style="cellpadding: 0; cellspacing: 0; margin: 0 auto; width: 100%">
                        <tr>
                            <td style="text-align: left">
                                <p><strong>이름을 입력해주세요.</strong>&nbsp;&nbsp;&nbsp;<span id="nameChk"></span></p>
                            </td>
                        </tr>
                        <tr>
                            <td><input type="text" name="memName" id="user_name" class="form-control tooltipstered"
                                    maxlength="6" required="required" aria-required="true"
                                    style="margin-bottom: 25px; width: 100%; height: 40px; border: 1px solid #d9d9de"
                                    placeholder="한글로 최대 6자"></td>
                        </tr>

                        <tr>
                            <td style="text-align: left">
                                <p><strong>이메일을 입력해주세요.</strong>&nbsp;&nbsp;&nbsp;<span id="emailChk"></span>
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td><input type="email" name="memEmail" id="user_email" class="form-control tooltipstered"
                                    required="required" aria-required="true"
                                    style="margin-bottom: 25px; width: 100%; height: 40px; border: 1px solid #d9d9de"
                                    placeholder="ex) abc@mvc.com"></td>
                        </tr>

                        <tr>
                            <td style="text-align: left">
                                <p><strong>비밀번호를 입력해주세요.</strong>&nbsp;&nbsp;&nbsp;<span id="pwChk"></span></p>
                            </td>
                        </tr>
                        <tr>
                            <td><input type="password" size="17" maxlength="20" id="password" name="memPassword"
                                    class="form-control tooltipstered" maxlength="20" required="required"
                                    aria-required="true"
                                    style="ime-mode: inactive; margin-bottom: 25px; height: 40px; border: 1px solid #d9d9de"
                                    placeholder="영문과 특수문자를 포함한 최소 8자"></td>
                        </tr>
                        <tr>
                            <td style="text-align: left">
                                <p><strong>비밀번호를 재확인해주세요.</strong>&nbsp;&nbsp;&nbsp;<span id="pwChk2"></span>
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td><input type="password" size="17" maxlength="20" id="password_check" name="pw_check"
                                    class="form-control tooltipstered" maxlength="20" required="required"
                                    aria-required="true"
                                    style="ime-mode: inactive; margin-bottom: 25px; height: 40px; border: 1px solid #d9d9de"
                                    placeholder="비밀번호가 일치해야합니다."></td>
                        </tr>

                        <tr>
                            <td style="width: 100%; text-align: center; colspan: 2;">
                                <input type="button" value="회원가입" class="btn form-control tooltipstered" id="signup-btn"
                                    style="background: #ff9b30; margin-top: 0; height: 40px; color: white; border: 0px solid #388E3C; opacity: 0.8">
                            </td>
                        </tr>

                    </table>
                </form>
            </div>
        </div>
    </div>

    <script>
        $(function () {
            //입력값 검증 정규표현식
            // const getIdCheck = RegExp(/^[a-zA-Z0-9]{4,14}$/);
            const getPwCheck = RegExp(
                /([a-zA-Z0-9].*[!,@,#,$,%,^,&,*,?,_,~])|([!,@,#,$,%,^,&,*,?,_,~].*[a-zA-Z0-9])/);
            const getName = RegExp(/^[가-힣]+$/);
            const getMail = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);

            //========== 회원가입 입력값 검증 =============//

            //입력을 정확히 했는지 판단하는 변수들
            let chk2 = false,
                chk3 = false,
                chk4 = false,
                chk5 = false;


            //패스워드 입력값 검증.
            $('#password').on('keyup', function () {
                //비밀번호 공백 확인
                if ($("#password").val().trim() === "") {
                    $('#password').css("background-color", "pink");
                    $('#pwChk').html('<b style="font-size:14px;color:red;">[패스워드는 필수정보!]</b>');
                    chk2 = false;
                }
                //비밀번호 유효성검사
                else if (!getPwCheck.test($("#password").val()) || $("#password").val().length < 8) {
                    $('#password').css("background-color", "pink");
                    $('#pwChk').html('<b style="font-size:14px;color:red;">[특수문자 포함 8자이상]</b>');
                    chk2 = false;
                } else {
                    $('#password').css("background-color", "aqua");
                    $('#pwChk').html('<b style="font-size:14px;color:green;">[참 잘했어요]</b>');
                    chk2 = true;
                }

            });

            //패스워드 확인란 입력값 검증.
            $('#password_check').on('keyup', function () {
                //비밀번호 확인란 공백 확인
                if ($("#password_check").val().trim() === "") {
                    $('#password_check').css("background-color", "pink");
                    $('#pwChk2').html('<b style="font-size:14px;color:red;">[패스워드확인은 필수정보!]</b>');
                    chk3 = false;
                }
                //비밀번호 확인란 유효성검사
                else if ($("#password").val() !== $("#password_check").val()) {
                    $('#password_check').css("background-color", "pink");
                    $('#pwChk2').html('<b style="font-size:14px;color:red;">[위에랑 똑같이!!]</b>');
                    chk3 = false;
                } else {
                    $('#password_check').css("background-color", "aqua");
                    $('#pwChk2').html('<b style="font-size:14px;color:green;">[참 잘했어요]</b>');
                    chk3 = true;
                }

            });

            //이름 입력값 검증.
            $('#user_name').on('keyup', function () {
                //이름값 공백 확인
                if ($("#user_name").val().trim() === "") {
                    $('#user_name').css("background-color", "pink");
                    $('#nameChk').html('<b style="font-size:14px;color:red;">[이름은 필수정보!]</b>');
                    chk4 = false;
                }
                //이름값 유효성검사
                else if (!getName.test($("#user_name").val())) {
                    $('#user_name').css("background-color", "pink");
                    $('#nameChk').html('<b style="font-size:14px;color:red;">[이름은 한글로 ~]</b>');
                    chk4 = false;
                } else {
                    $('#user_name').css("background-color", "aqua");
                    $('#nameChk').html('<b style="font-size:14px;color:green;">[참 잘했어요]</b>');
                    chk4 = true;
                }

            });

            //이메일 입력값 검증.
            const $emailInput = $('#user_email');
            $emailInput.on('keyup', function () {
                //이메일값 공백 확인
                if ($emailInput.val().trim() === "") {
                    $emailInput.css("background-color", "pink");
                    $('#emailChk').html('<b style="font-size:14px;color:red;">[이메일은 필수정보에요!]</b>');
                    chk5 = false;
                }
                //이메일값 유효성검사
                else if (!getMail.test($emailInput.val())) {
                    $emailInput.css("background-color", "pink");
                    $('#emailChk').html('<b style="font-size:14px;color:red;">[이메일 형식 몰라?]</b>');
                    chk5 = false;
                } else {

                    //이메일 중복확인 비동기 통신
                    fetch('/check?checkEmail=' + $emailInput.val())
                        .then(res => res.text())
                        .then(flag => {
                            //console.log(flag);
                            if (flag === 'true') {
                                $emailInput.css('background', 'pink');
                                $('#emailChk').html(
                                    '<b style="font-size:14px; color:red;">[이메일이 중복되었습니다!]</b>');
                                chk5 = false;
                            } else {
                                $emailInput.css('background', 'aqua');
                                $('#emailChk').html(
                                    '<b style="font-size:14px; color:green;">[사용가능한 이메일입니다.]</b>'
                                );
                                chk5 = true;
                            }
                        });
                }

            });


            //회원가입 버튼 클릭 이벤트
            $('#signup-btn').on('click', e => {

                if (chk2 && chk3 && chk4 && chk5) {
                    //form Node
                    $('#signUpForm').submit(); //수동 submit
                } else {
                    alert('입력값을 확인하세요!');
                }
            });

        }); //JQUERY END
    </script>


</body>

</html>