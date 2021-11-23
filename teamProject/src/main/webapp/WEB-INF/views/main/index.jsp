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
        <header>
            <div class="inner-header">
                <h1 class="logo">
                    <a href="#">
                        <img src="img/main_logo.png" alt="무비피디아 로고이미지">
                    </a>
                </h1>

                <!-- 네비게이션 부분 -->
                <nav class="gnb">
                    <ul>
                        <li><a id="boxOffice" href="/movie/boxoffice">박스오피스</a></li>
                        <!-- <li><a href="/movie/screening">현재상영작</a></li> -->
                        <!-- <li><a href="/movie/screenyet">상영예정작</a></li> -->
                    </ul>
                </nav>

                <nav class="tnb">
                    <ul>
                        <li>
                            <form action="/search" method="get" class="search">
                                <label>
                                    <span class="lnr lnr-magnifier"></span>
                                    <input type="text" placeholder="영화를 검색해보세요." name="keyword" id="search">
                                </label>
                            </form>
                        </li>
                        <c:if test="${loginUser == null}">
                            <li><a href="/login">로그인</a></li>
                            <li><a href="/join">회원가입</a></li>
                        </c:if>

                        <c:if test="${loginUser != null}">
                            <li><a href="#">${loginUser.memName}</a></li>
                            <li style="text-decoration: underline;"><a href="/logout">로그아웃</a></li>
                        </c:if>

                    </ul>
                </nav>
            </div>
        </header>
        <!-- //header -->


        <!-- section movie-content -->
        <section class="movie-content">
            <div class="movie-rank" id="boxOfficeRank">
                <div class="movie-rank-title">
                    <p>박스오피스 순위</p>
                </div>
                <div class="movie-box">
                    <div class="movies">
                        <ul>
                            <c:forEach var="mList" items="${mList}">
                                <li>
                                    <a href="/detail?movieNo=${mList.movieNo}">
                                        <div class="movie-img">
                                            <img src="${mList.movieImg}" alt="${mList.movieTitle}" class="img">
                                            <div class="rank-num">${mList.movieNo}</div>
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
                    <!-- <div class="arrow-btn left">
                        <span class="lnr lnr-chevron-left-circle"></span>
                    </div>
                    <div class="arrow-btn right">
                        <span class="lnr lnr-chevron-right-circle"></span>
                    </div> -->
                </div>

            </div>

            <!-- <div class="movie-rank" id="showing">
                <div class="movie-rank-title">
                    <p>현재상영작</p>
                </div>
                <div class="movie-box">
                    <div class="movies">
                        <ul>
                            <c:forEach var="mList" items="${mList}">
                                <li>
                                    <a href="/detail?movieNo=1">
                                        <div class="movie-img">
                                            <img src="https://an2-img.amz.wtchn.net/image/v2/ff693f2671c804e7e54fb0c47fc07073.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPamN3TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpNMU9ERTJOVFl6TlRVNE5ETTVNRFl3SWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqbzBPVEI5Lm5wRGxvcHl1OTZvektROEU0ZUhuZW9QcGNsM3A5d2lIOTAzLTE5YVJhSVU"
                                                alt="${mList.movieTitle}" class="img">
                                            <div class="rank-num">${mList.movieNo}</div>
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
                    <div class="arrow-btn left">
                        <span class="lnr lnr-chevron-left-circle"></span>
                    </div>
                    <div class="arrow-btn right">
                        <span class="lnr lnr-chevron-right-circle"></span>
                    </div>
                </div>
            </div>

            <div class="movie-rank" id="screenYet">
                <div class="movie-rank-title">
                    <p>상영예정작</p>
                </div>
                <div class="movie-box">
                    <div class="movies">
                        <ul>
                            <c:forEach var="mList" items="${mList}">
                            <li>
                                <a href="/detail?movieNo=1">
                                    <div class="movie-img">
                                        <img src="https://an2-img.amz.wtchn.net/image/v2/ff693f2671c804e7e54fb0c47fc07073.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPamN3TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpNMU9ERTJOVFl6TlRVNE5ETTVNRFl3SWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqbzBPVEI5Lm5wRGxvcHl1OTZvektROEU0ZUhuZW9QcGNsM3A5d2lIOTAzLTE5YVJhSVU"
                                            alt="${mList.movieTitle}" class="img">
                                        <div class="rank-num">${mList.movieNo}</div>
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
                    <div class="arrow-btn left">
                        <span class="lnr lnr-chevron-left-circle"></span>
                    </div>
                    <div class="arrow-btn right">
                        <span class="lnr lnr-chevron-right-circle"></span>
                    </div>
                </div>
            </div> -->
        </section>
        <!-- //section movie-content -->


        <!-- footer -->
        <footer>
            <ul>
                <li>고객센터</li>
                <li>ABOUT US</li>
                <li> &#xa9 MOVIE PEDIA 2021 <br>All Rights Reseved</li>
            </ul>
        </footer>
        <!-- //footer -->
    </div>

    <script>
        
    </script>
</body>

</html>