<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title></title>
</head>
<body>
    <h1>로그인 성공입니다.</h1>

    <p>
        #번호: ${mem.memNo}
        #이름: ${mem.memName}
        #email: ${mem.memEmail}
        #pw: ${mem.memPassword}
    </p>

</body>
</html>