<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>무비피디아(MOVIE PEDIA) - 현재상영 영화 평가 사이트</title>

        <!-- 파비콘 넣기 -->
        <link rel="icon" href="/mainLogo.ico">
        <link rel="apple-touch-icon" href="/mainLogo.ico">

        <!-- linear icons -->
        <!-- https://linearicons.com/free#cdn -->
        <link rel="stylesheet" href="https://cdn.linearicons.com/free/1.0.0/icon-font.min.css">

        <!-- fontawesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css">

        <!-- Bootstrap js -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" defer></script>


        <!-- reset css -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css">
        <!-- custom css -->
        <link rel="stylesheet" href="/css/main.css">

        <!-- 오렌지색상 ff9b30 -->
        <!-- 네이비색상 0d1a40 -->
    </head>
<body>
    <div class="wrap">
        <!-- header -->
        <%@ include file="../include/header.jsp" %>
        <!-- //header -->


        <!-- section movie-content -->
        <section class="movie-content">
            <div class="movie-rank" id="boxOfficeRank">
                <div class="movie-rank-title">
                    <p>${pageInfo.page.keyword} 검색</p>
                </div>
                <div class="movie-box">
                    <div class="movies">
                        <ul>
                            <c:forEach var="mList" items="${mList}">
                            <li>
                                <a href="/detail?movieNo=${mList.movieNo}">
                                    <div class="movie-img">
                                        <img src="${mList.movieImg}"
                                            alt="${mList.movieTitle}" class="img">
                                        <div class="rank-num">${mList.rank}</div>
                                    </div>
                                    <div class="movie-info">
                                        <div class="movie-title">${mList.movieTitle}</div>
                                        <div class="m-op-county">${mList.movieOpDay} | ${mList.movieCountry}</div>
                                        <div class="movie-grade">★5.0 (0명)</div>

                                    </div>
                                </a>
                            </li>
                        </c:forEach>

                        </ul>
                    </div>
                </div>

            </div>
        </section>
        <!-- //section movie-content -->


        <!-- footer -->
        <%@ include file="../include/footer.jsp" %>
        <!-- //footer -->
    </div>
</body>
</html>