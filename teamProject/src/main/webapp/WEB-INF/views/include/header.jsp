<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                <li><a href="#">박스오피스</a></li>
                <li><a href="#">현재상영작</a></li>
                <li><a href="#">상영예정작</a></li>
            </ul>
        </nav>

        <nav class="tnb">
            <ul>
                <li>
                    <form action="/search" method="get" class="search">
                        <label>
                            <i class="fas fa-search"></i>
                            <input type="text" placeholder="영화 제목을 입력하세요." name="searchKey" id="search">
                        </label>
                    </form>
                </li>
                <li><a href="/login">로그인</a></li>
                <li><a href="/join">회원가입</a></li>
            </ul>
        </nav>
    </div>
</header>
<!-- //header -->