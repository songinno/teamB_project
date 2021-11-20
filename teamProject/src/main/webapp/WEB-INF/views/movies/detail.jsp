<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <%@ include file="../include/static-head.jsp" %>
    <style>
        header {
            background: none;

        }

        .movie-bg-img {
            background: bisque;

            width: 100%;
            height: 400px;
        }

        .movie-bg-img .movie-bg-box {
            background: lightgray;

            height: 400px;
            display: flex;

        }
        .movie-bg-img .movie-bg-box .left-bg-box {
            background: gray;
            border: 1px solid #000;
            flex: 2;
        }
        .movie-bg-img .movie-bg-box .center-bg-box {
            background: url("/img/이터널스bg.jpg") no-repeat center;
            border: 1px solid #000;
            flex: 5;
        }
        .movie-bg-img .movie-bg-box .right-bg-box {
            background: rgb(221, 171, 171);
            border: 1px solid #000;
            flex: 2;
        }
        .movie-bg-img .movie-info-box {
            background: skyblue;
            height: 500px;
        }
        .movie-bg-img .movie-info-box .info-box-container {
            background: blue;
            width: 70%;
            margin: 0 auto;
            height: 400px;
            padding: 30px 30px;
            display: flex;
            /* flex-flow: row wrap; */
            justify-content: space-evenly;
        }

        .movie-bg-img .movie-info-box .info-box-container .movie-poster {
            border: 1px solid #000;

            width: 300px;
            height: 300px;
        }
        .movie-bg-img .movie-info-box .info-box-container .movie-info {

            border: 1px solid #000;
            width: 500px;
            height: 300px;
        }
    </style>
</head>

<body>

    <div class="wrap">
        <!-- header -->
        <%@ include file="../include/header.jsp" %>
        <!-- //header -->

        <section class="movie-bg-img">
            <div class="movie-bg-box">
                <div class="left-bg-box"></div>
                <div class="center-bg-box"></div>
                <div class="right-bg-box"></div>
            </div>
            
            <div class="movie-info-box">
                <div class="info-box-container">
                    <div class="movie-poster">
                        <img src="" alt="">
                    </div>
                    <div class="movie-info">
                        <div class="basic-info">
                            <h1>${movie.movieTitle}</h1>
                            <ul>
                                <li>${movie.movieOpDay}</li>
                                <li>${movie.movieGenre}</li>
                                <li>${movie.movieCountry}</li>
                            </ul>
                            <h2>${movie.movieDirector}</h2>
                            <h2>${movie.movieStory}</h2>
                        </div>
                        <div class="grade-info"></div>

                    </div>
                </div>


            </div>
        </section>
        

        

    </div>
</body>

</html>