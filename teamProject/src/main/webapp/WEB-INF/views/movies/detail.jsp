<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <%@ include file="../include/static-head.jsp" %>
    <style>
        header {
            background: none;
            border: none;

        }

        .movie-bg-img {
            background: bisque;

            width: 100%;
            height: 400px;
        }

        .movie-bg-img .movie-bg-box {
            background: skyblue;

            height: 400px;
            display: flex;

        }

        .movie-bg-img .movie-bg-box .left-bg-box {
            background: #B8B8B8;
            /* rgb(184,184,184) */
            flex: 2;
        }

        .movie-bg-img .movie-bg-box .center-bg-box {
            background: url(${movie.movieBgImg}) no-repeat center;
            flex: 5;
            display: flex;
        }

        .movie-bg-img .movie-bg-box .center-bg-box .center-left {
            /* border: 1px solid red; */
            flex: 1.5;

            background: linear-gradient(to right,
                    rgba(184, 184, 184, 1) 10%,
                    rgba(184, 184, 184, 0.5) 50%,
                    rgba(184, 184, 184, 0) 100%);
        }

        .movie-bg-img .movie-bg-box .center-bg-box .center-center {
            /* border: 1px solid red; */
            flex: 7;
        }

        .movie-bg-img .movie-bg-box .center-bg-box .center-right {
            /* border: 1px solid blue; */
            flex: 1.5;

            background: linear-gradient(to left,
                    rgba(184, 184, 184, 1) 10%,
                    rgba(184, 184, 184, 0.5) 50%,
                    rgba(184, 184, 184, 0) 100%);
        }

        .movie-bg-img .movie-bg-box .right-bg-box {
            background: #B8B8B8;
            flex: 2;
        }

        .movie-bg-img .movie-info-box {
            background: lightgray;
            height: 1500px;
        }


        .movie-bg-img .movie-info-box .info-box-container {
            /* background: gray; */
            width: 60%;
            margin: 0 auto;
            padding: 50px 50px;
            display: flex;
            flex-flow: row wrap;
            justify-content: space-evenly;
            border-bottom: 1px solid gray;
        }

        .movie-bg-img .movie-info-box .info-box-container .movie-poster-box {
            width: 200px;
            /* background: rgb(104, 226, 220); */
        }

        .movie-bg-img .movie-info-box .info-box-container .movie-poster-box .movie-poster {
            border: 4px double white;
            border-radius: 5px;
            height: 300px;

            position: relative;
            top: -100px;
        }

        .movie-bg-img .movie-info-box .info-box-container .movie-poster-box .movie-poster img {
            width: 100%;
            height: 300px;
        }

        .movie-bg-img .movie-info-box .info-box-container .movie-poster-box .grade-box {
            width: 100%;
            height: 80px;
            /* background: yellowgreen; */
            /* border: 1px solid #000; */
            text-align: center;
            padding: 0 5px;

            position: relative;
            bottom: 50px;
        }

        .movie-bg-img .movie-info-box .info-box-container .movie-poster-box .grade-box h2 {
            font-weight: bold;
            font-size: 23px;
            color: #0d1a40;
        }

        .movie-bg-img .movie-info-box .info-box-container .movie-poster-box .grade-box span {
            color: #ff9b30;
        }

        .movie-bg-img .movie-info-box .info-box-container .movie-info {

            border: 2px solid #0d1a40;
            border-radius: 10px;
            width: 500px;
            /* height: 300px; */
            padding: 30px 20px;

            position: relative;
            right: 60px;
        }

        .movie-bg-img .movie-info-box .info-box-container .movie-info .basic-info h1 {
            font-weight: bold;
            font-size: 1.3em;
            margin-bottom: 15px;
        }

        .movie-bg-img .movie-info-box .info-box-container .movie-info .basic-info ul {
            display: flex;
            padding-bottom: 15px;
            margin-bottom: 15px;
            border-bottom: 1px solid gray;
            /* background: yellow; */
        }

        .movie-bg-img .movie-info-box .info-box-container .movie-info .basic-info h2 {
            margin-bottom: 30px;
        }

        .movie-bg-img .movie-info-box .info-box-container .movie-info .basic-info h2 span {
            font-weight: bold;
            font-size: 1.1em;

        }

        .movie-bg-img .movie-info-box .info-box-container .movie-info .basic-info p {
            /* background: gray; */
            line-height: 1.4;
            text-align: justify;
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
                <div class="center-bg-box">
                    <div class="center-left"></div>
                    <div class="center-center"></div>
                    <div class="center-right"></div>
                </div>
                <div class="right-bg-box"></div>
            </div>

            <div class="movie-info-box">
                <div class="info-box-container">
                    <div class="movie-poster-box">
                        <div class="movie-poster">
                            <img src="${movie.movieImg}" alt="영화 포스터 이미지">
                        </div>
                        <div class="grade-box">
                            <h2>평균 <span>★</span>3.1 (2만명)</h2>
                        </div>
                    </div>

                    <div class="movie-info">
                        <div class="basic-info">
                            <h1>${movie.movieTitle}</h1>
                            <ul>
                                <li>${movie.movieOpDay} ㅣ </li>
                                <li>${movie.movieGenre} ㅣ </li>
                                <li>${movie.movieCountry}</li>
                            </ul>
                            <h2><span>감독</span> ${movie.movieDirector}</h2>
                            <h2><span>줄거리</span></h2>
                            <p>${movie.movieStory}</p>
                        </div>
                    </div>
                </div>


            </div>
        </section>




    </div>
</body>

</html>