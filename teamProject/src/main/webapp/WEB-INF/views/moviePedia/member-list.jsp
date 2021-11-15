<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <%@ include file="../include/static-head.jsp" %>
</head>
<body>
    <div class="wrap">
        <%@ include file="../include/header.jsp" %>

        <h1>회원목록 창입니다.</h1>
        
        <p>
            #번호: ${mem.memNum}
            #이름: ${mem.name}
            #이메일: ${mem.e}
            #비밀번호: ${mem.pw}
        </p>
        
    </div>
</body>
</html>