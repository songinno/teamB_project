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
        <div class="detail-container">

            <h1 class="main-title">등록번호 ${adMovie.movieNo}번 영화</h1>

            <div class="mb-3">
                <label for="exampleFormControlInput2" class="form-label">제목</label>
                <input type="text" class="form-control" id="exampleFormControlInput2" placeholder="제목" name="movieTitle"
                    value="${adMovie.movieTitle}" disabled>
            </div>
            <div class="mb-3">
                <label for="exampleFormControlInput2" class="form-label">감독</label>
                <input type="text" class="form-control" id="exampleFormControlInput2" placeholder="감독" name="movieDirector"
                    value="${adMovie.movieDirector}" disabled>
            </div>
            <div class="mb-3">
                <label for="exampleFormControlInput2" class="form-label">출연 배우</label>
                <input type="text" class="form-control" id="exampleFormControlInput2" placeholder="출연 배우" name="movieActor"
                    value="${adMovie.movieActor}" disabled>
            </div>
            <div class="mb-3">
                <label for="exampleFormControlInput2" class="form-label">장르</label>
                <input type="text" class="form-control" id="exampleFormControlInput2" placeholder="장르" name="movieGenre"
                    value="${adMovie.movieGenre}" disabled>
            </div>
            <div class="mb-3">
                <label for="exampleFormControlInput2" class="form-label">제작 국가</label>
                <input type="text" class="form-control" id="exampleFormControlInput2" placeholder="제작 국가" name="movieCountry"
                    value="${adMovie.movieCountry}" disabled>
            </div>
            <div class="mb-3">
                <label for="exampleFormControlInput2" class="form-label">개봉일</label>
                <input type="text" class="form-control" id="exampleFormControlInput2" placeholder="개봉일" name="movieOpDay"
                    value="${adMovie.movieOpDay}" disabled>
            </div>
            <div class="mb-3">
                <label for="exampleFormControlInput2" class="form-label">이미지</label>
                <input type="text" class="form-control" id="exampleFormControlInput2" placeholder="이미지"
                    name="movieImg" value="${adMovie.movieImg}" disabled>
            </div>
            
            <div class="mb-3">
                <label for="exampleFormControlTextarea1" class="form-label">줄거리</label>

                <p class="main-detail">
                    ${adMovie.movieStory}
                </p>

            </div>

            <div class="bottom-group">
                <div class="update-time">
                    <c:if test="${adMovie.updateDate != null}">
                        <span class="time">마지막 수정 시간:
                            <fmt:formatDate value="${adMovie.updateDate}" pattern="yyyy년 MM월 dd일 a hh:mm:ss" /></span>
                    </c:if>
                </div>

                <div class="btn-group btn-group-lg custom-btn-group" role="group">
                    <button id="mod-btn" type="button" class="btn btn-warning">수정</button>
                    <button id="del-btn" type="button" class="btn btn-danger">삭제</button>
                    <button id="list-btn" type="button" class="btn btn-dark">목록</button>
                </div>
            </div>
        
    </div>

    <script>
        const [$modBtn, $delBtn, $listBtn] = [...document.querySelector('div[role=group]').children];

        // const $modBtn = document.getElementById('mod-btn');
        //수정버튼
        $modBtn.onclick = e => {
            location.href = '/admin/movies/modify?movieNo=${adMovie.movieNo}';
        };

        //삭제버튼
        $delBtn.onclick = e => {
            if (!confirm('정말 삭제하시겠습니까?')) {
                return;
            }
            location.href = '/admin/movies/delete?movieNo=${adMovie.movieNo}';
        };
        //목록버튼
        $listBtn.onclick = e => {
            location.href = '/admin/movies/list';
        };
    </script>
</body>
</html>