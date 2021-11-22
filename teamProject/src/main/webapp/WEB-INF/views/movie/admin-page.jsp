<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <%@ include file="../include/admin-static-head.jsp" %>
</head>
<body>
    <div class="wrap">
        
        <section>
                <h1>무비피디아 관리자 페이지입니다.</h1>
                <button id="to-list" type="button" class="btn btn-dark" >
                    영화 관리페이지 이동
                </button>
        </section>
        
    </div>


    <script>
        //관리페이지 이동 버튼 이벤트
        const $toList = document.getElementById('to-list');
        $toList.onclick = e => {
            location.href = '/admin/movies/list';
        };
    </script>
</body>
</html>