<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <%@ include file="../include/static-head.jsp" %>
</head>
<style>
    h1.test {
        padding-top: 200px;
    }
</style>
<body>
    <div class="wrap">
        <%@ include file="../include/header.jsp" %>

        <h1 class="test">테스트</h1>
        
        <p>
            #번호: ${memNo}
            #이름: ${mem.memName}
            #이메일: ${mem.memEmail}
            #비밀번호: ${mem.memPassword}
        </p>
        
    </div>
</body>
</html>