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

    <h1>모든 회원들</h1>

    <li>
        총 맴버수: ${member.size()}명
    </li>
    <br>

    <ul class="member-list">
        <c:forEach var="m" items="${member}">
            <li>
                #회원번호: ${m.memNo}, 이름: ${m.memName},
                이메일: ${m.memEmail}, 비번: ${m.memPassword}, 가입일: ${m.memJoinDate}
            </li>
        </c:forEach>     
    </ul>

</body>
</html>