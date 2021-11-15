<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- header -->
<header>
    <div class="inner-header">
        <h1 class="logo">
            <a href="#">
                <img src="/img/camera.png" alt="메인 로고이미지">
            </a>
        </h1>
        <nav class="gnb">
            <ul>
                <li><a href="#">영화</a></li>
                <li><a href="#">TV 프로그램</a></li>
                <li><a href="#">책</a></li>
            </ul>
        </nav>
        <nav class="tnb">
            <div class="search-box">
                <i class="fas fa-search"></i>
                <label>
                    <input type="text" autocomplete="off" placeholder="콘텐츠, 인물, 컬렉션, 유저를 검색해보세요." name="searchKeyword">
                </label>
            </div>
            <ul>
                <li><a href="#">로그인</a></li>
                <li><a href="#">회원가입</a></li>
            </ul>
        </nav>
    </div>
</header>