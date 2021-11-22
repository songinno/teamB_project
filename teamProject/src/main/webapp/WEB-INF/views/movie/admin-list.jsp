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
        <%@ include file="../include/admin-header.jsp" %>

        <div class="movie-list">

            <!-- 검색창 영역 -->
            <!-- <section class="search">
                <form action="/admin/movies/list" method="get">
                    <select id="search-type" class="form-select" name="type">
                        <option value="title">영화 번호</option>
                        <option value="content">영화 제목</option>
                        <option value="writer">영화 감독</option>
                        <option value="titleContent">출연 배우</option>
                    </select>

                    <input class="form-control" type="text" name="keyword" value="${pageInfo.page.keyword}">

                    <button class="btn btn-primary" type="submit">
                        <i class="fas fa-search"></i>
                    </button>
                </form>
            </section> -->
            
            <!-- <div class="amount">
                <a class="btn btn-danger" href="/board/list?amount=10">10</a>
                <a class="btn btn-danger" href="/board/list?amount=20">20</a>
                <a class="btn btn-danger" href="/board/list?amount=30">30</a>
            </div>             -->
            
            <table class="table table-dark table-striped table-hover mlist">
                <tr>
                    <th>번호</th>
                    <th>영화 제목</th>
                    <th>영화 감독</th>
                    <th>개봉일</th>
                    <th>등록일</th>
                </tr>

                <c:forEach var="m" items="${mList}">
                    <tr>
                        <td>${m.movieNo}</td>
                        <td>
                            ${m.movieTitle}
                        </td>
                        <td>${m.movieDirector}</td>
                        <td>${m.movieOpDay}</td>
                        
                        <td>
                            <fmt:formatDate value="${m.regDate}" pattern="yyyy년 MM월 dd일 a hh:mm" />                            
                        </td>
                    </tr>
                </c:forEach>
            </table>

            <div class="bottom-section">

                <!-- <ul class="pagination pagination-lg pagination-custom">
                    
                    <c:if test="${pageInfo.prev}">
                        <li class="page-item"><a class="page-link" href="/board/list?pageNum=${pageInfo.beginPage - 1}&amount=${pageInfo.page.amount}&type=${pageInfo.page.type}&keyword=${pageInfo.page.keyword}">prev</a></li>
                    </c:if>
                   
                    <c:forEach var="i" begin="${pageInfo.beginPage}" end="${pageInfo.endPage}" step="1">
                        <li class="page-item"><a class="page-link" href="/board/list?pageNum=${i}&amount=${pageInfo.page.amount}&type=${pageInfo.page.type}&keyword=${pageInfo.page.keyword}">${i}</a></li>
                    </c:forEach>
                    
                    <c:if test="${pageInfo.next}">
                        <li class="page-item"><a class="page-link" href="/board/list?pageNum=${pageInfo.endPage + 1}&amount=${pageInfo.page.amount}&type=${pageInfo.page.type}&keyword=${pageInfo.page.keyword}">next</a></li>
                    </c:if>
                </ul> -->

                <div class="btn-write">
                    <a class="btn btn-outline-danger btn-lg" href="/admin/movies/upload">영화 등록</a>
                </div>
            </div>
        </div>
        
    </div>

    <script>
        //상세보기 요청 이벤트
        const $table = document.querySelector(".mlist");
        $table.addEventListener('click', e => {
            if (!e.target.matches('.mlist td')) return;

            //console.log('tr 클릭됨! - ', e.target);

            let bn = e.target.parentElement.firstElementChild.textContent;
            console.log('글번호: ' + bn);

            location.href = '/admin/movies/detail?movieNo=' + bn;
                // + '&pageNum=${pageInfo.page.pageNum}'
                // + '&amount=${pageInfo.page.amount}';
        });
    </script>
</body>
</html>