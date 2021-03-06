<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <%@ include file="../include/static-head.jsp" %>
    <style>
        /* header {
            background: none;
            border: none;

        } */


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
            background: #fff;
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
                    rgb(255, 254, 254, 1) 10%,
                    rgba(235, 235, 235, 0.5) 50%,
                    rgba(241, 240, 240, 0) 100%);
        }

        .movie-bg-img .movie-bg-box .center-bg-box .center-center {
            /* border: 1px solid red; */
            flex: 7;
        }

        .movie-bg-img .movie-bg-box .center-bg-box .center-right {
            /* border: 1px solid blue; */
            flex: 1.5;

            background: linear-gradient(to left,
                    rgb(255, 254, 254, 1) 10%,
                    rgba(235, 235, 235, 0.5) 50%,
                    rgba(241, 240, 240, 0) 100%);
        }

        .movie-bg-img .movie-bg-box .right-bg-box {
            background: #fff;
            flex: 2;
        }

        .movie-bg-img .movie-info-box {
            background: #fff;
            height: 1500px;
        }


        .movie-bg-img .movie-info-box .info-box-container {
            /* background: gray; */
            width: 60%;
            margin: 0 auto;
            padding: 10px 50px;
            display: flex;
            flex-flow: row wrap;
            justify-content: space-evenly;
            border-bottom: 1px solid #bbb;
        }

        .movie-bg-img .movie-info-box .info-box-container .movie-poster-box {
            width: 220px;
            /* background: rgb(104, 226, 220); */
        }

        .movie-bg-img .movie-info-box .info-box-container .movie-poster-box .movie-poster {
            border: 3px solid white;
            border-radius: 5px;
            height: 300px;

            position: relative;
            top: -50px;
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

            position: relative;
            bottom: 40px;
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

            /* border: 2px solid #aaa; */
            border-radius: 10px;
            width: 500px;
            height: 300px;
            padding: 30px 20px;

            position: relative;
            right: 60px;
        }

        .movie-bg-img .movie-info-box .info-box-container .movie-info .basic-info h1 {
            font-weight: bold;
            font-size: 1.5em;
            margin-bottom: 15px;
        }

        .movie-bg-img .movie-info-box .info-box-container .movie-info .basic-info ul {
            display: flex;
            padding-bottom: 15px;
            margin-bottom: 15px;
            border-bottom: 1px solid #bbb;
            /* background: yellow; */
        }

        .movie-bg-img .movie-info-box .info-box-container .movie-info .basic-info h2 {
            margin-bottom: 20px;
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

        .movie-comment {
            margin: 50px auto;
            background: #f3f3f3;
        }

        .movie-comment .movie-comment-box {
            width: 60%;
            margin: 0 auto;
            padding: 15px 0;
        }

        .movie-comment .movie-comment-box form {
            display: flex;
        }

        .movie-comment .movie-comment-box input {
            border: 1px solid #ff9b30;
            position: relative;
            bottom: 30px;
        }

        .movie-comment .movie-comment-box .comment-list {
            font-size: 1.3em;
            font-weight: 700;
        }

        .movie-comment .movie-comment-box .comment-list li {
            border: 1px solid #fff;
            border-radius: 4px;
            background: rgb(206, 206, 206);
            padding: 8px 10px;
            font-size: 0.8em;
            font-weight: normal;
            line-height: 2;
            margin-top: 10px;
        }

        #no-login {
            /* background: yellow; */
            color: red;
            position: relative;
            left: 40%;
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


        </section>

        <section class="movie-bg-img">
            <div class="movie-info-box">
                <div class="info-box-container">
                    <div class="movie-poster-box">
                        <div class="movie-poster">
                            <img src="${movie.movieImg}" alt="?????? ????????? ?????????">
                        </div>
                        <div class="grade-box">
                            <h2>?????? <span>???</span>3.1 (2??????)</h2>
                        </div>
                    </div>

                    <div class="movie-info">
                        <div class="basic-info">
                            <h1>${movie.movieTitle}</h1>
                            <ul>
                                <li>${movie.movieOpDay} ??? </li>
                                <li>${movie.movieGenre} ??? </li>
                                <li>${movie.movieCountry}</li>
                            </ul>
                            <h2><span>??????</span> ${movie.movieDirector}</h2>
                            <h2><span>??????</span> ${movie.movieActor}</h2>
                            <h2><span>?????????</span></h2>
                            <p>${movie.movieStory}</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>



        <section class="movie-comment">

            <div class="movie-comment-box">
                <c:if test="${loginUser != null}">
                    <form action="/grade-check" method="post">
                        <div class="grading-box">
                            <h1>?????? ?????? ???</h1>
                            <input type="text" list="grade">
                            <datalist id="grade">
                                <option>0</option>
                                <option>0.5</option>
                                <option>1</option>
                                <option>1.5</option>
                                <option>2</option>
                                <option>2.5</option>
                                <option>3</option>
                                <option>3.5</option>
                                <option>4</option>
                                <option>4.5</option>
                                <option>5</option>
                            </datalist>
                            <textarea name="gradeComment" id="text-box" cols="80" rows="4">

                            </textarea>
                        </div>
                        <input type="hidden" name="movieNo" value="${movie.movieNo}">
                        <input type="hidden" name="gradeWriter" value="${loginUser.memName}">
                        <button type="submit">??????</button>
                    </form>
                </c:if>
                <c:if test="${loginUser == null}">
                    <a id="no-login" href="/login">????????? ????????? ???????????? ???????????????.</a>
                </c:if>


                <ul class="comment-list">
                    <span>?????????</span>
                    <li>
                        <h1>??????</h1>
                        <h2>??????</h2>
                        <p>????????? ??????</p>
                        <span>????????????</span>
                    </li>
                    <li>
                        <h1>??????</h1>
                        <h2>??????</h2>
                        <p>????????? ??????</p>
                        <span>????????????</span>
                    </li>
                    <li>
                        <h1>??????</h1>
                        <h2>??????</h2>
                        <p>????????? ??????</p>
                        <span>????????????</span>
                    </li>
                </ul>
                
            </div>

        </section>
        <%@ include file="../include/footer.jsp" %>
    </div>

















</body>

</html>