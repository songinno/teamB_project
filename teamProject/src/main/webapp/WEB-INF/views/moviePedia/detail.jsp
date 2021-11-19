<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <%@ include file="../include/static-head.jsp" %>
    <style>
        
    </style>
</head>

<body>
    <div class="wrap">
        <!-- header -->
        <%@ include file="../include/header.jsp" %>
        <!-- //header -->

        <section class="movie-bg-img">
            <div class="movie-bg-container">

            </div>
        </section>
        <!-- contents -->
        <section class="contents">

            <div class="movie-page">
                <ul class="movie-poster">
                    <li class="img-">
                        <img src="https://an2-img.amz.wtchn.net/image/v2/5802f39e2dadd2eec855e26a0e59aea5.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPamN3TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpNMU56TTFORE0xTnpreE16UXdNems0SWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqbzBPVEI5LmJuZFBXclFhVFp4U3hrRzMxRTFXNmxRcXdjUm9ZaVRDX1c5WlhBMUNsTEE"
                            alt="이터널스">
                    </li>
                </ul>
                <h2>영화 제목</h2>
                <p>개봉연도 | 장르 | 제작국가<br>
                    장르<br>
                    출연진<br>
                    줄거리<br>
                </p>
            </div>

        </section>
        <!-- //cpntents -->

        <!-- footer -->
        <%@ include file="../include/footer.jsp" %>
        <!-- //footer -->

    </div>
</body>

</html>