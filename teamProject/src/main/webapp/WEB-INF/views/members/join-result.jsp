<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <!-- Bootstrap css -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" defer>
    <%@ include file="../include/static-head.jsp" %>
    
    
</head>
<style>
    .header-clone {
        width: 100%;
        height: 200px;

    }
    .result-box {
        border: 3px solid #ff9b30;
        width: 70%;
        margin: 30px auto;
        padding: 200px 100px 200px;
        text-align: center;

    }
    .result-box h1 {
        font-size: 2.0em;
        margin-bottom: 50px;
    }
    .result-box h2 {
        font-size: 1.8em;
        margin-bottom: 50px;
    }
    .result-box h2 span {
        font-weight: bold;
        color: #ff9b30;
    }
    .result-box .choice-box {
        width: 400px;
        /* border: 1px solid red; */
        margin: 0 auto;
    }
    .result-box .choice-box button {
        margin-right: 30px;
    }
    .result-box .choice-box button a {
        color: white;
    }
    
</style>

<body>
    <div class="wrap">
        <%@ include file="../include/header.jsp" %>
        <div class="header-clone"></div>

        <div class="result-box">
            <h1>축하합니다.</h1>
            <h2><span>${mem.memName}</span>님 회원가입이 완료되었습니다!</h2>

            <div class="choice-box">
                <button class="btn btn-secondary">
                    <a href="/login">로그인</a>
                </button>
                <button class="btn btn-secondary">
                    <a href="/">홈으로</a>
                </button>
                
            </div>
        </div>




    </div>
</body>

</html>