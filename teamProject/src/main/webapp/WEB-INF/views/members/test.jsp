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

        <h1 class="test">회원가입된 사람</h1>
        
        <p>
            #번호: 이건 인텔리제이랑 오라클이랑 안맞는데 상관없음. 오라클엔 잘 올라가고, 전체조회시 번호 제대로 나옴.

            #이름: ${mem.memName}
            #이메일: ${mem.memEmail}
            #비밀번호: ${mem.memPassword}
        </p>
        
    </div>
</body>
</html>