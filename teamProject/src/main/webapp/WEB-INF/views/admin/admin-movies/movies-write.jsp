<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <%@ include file="../../include/admin-static-head.jsp" %>
</head>

<body>
    <div class="wrap">
        <%@ include file="../../include/admin-header.jsp" %>

        <div class="detail-container">

            <form action="/admin/movies/upload" method="post">

                <div class="mb-3">
                    <label for="exampleFormControlInput2" class="form-label">제목</label>
                    <input type="text" class="form-control" id="exampleFormControlInput2" placeholder="제목"
                        name="movieTitle">
                </div>
                <div class="mb-3">
                    <label for="exampleFormControlInput2" class="form-label">감독</label>
                    <input type="text" class="form-control" id="exampleFormControlInput2" placeholder="감독"
                        name="movieDirector" >
                </div>
                <div class="mb-3">
                    <label for="exampleFormControlInput2" class="form-label">출연 배우</label>
                    <input type="text" class="form-control" id="exampleFormControlInput2" placeholder="출연 배우"
                        name="movieActor">
                </div>
                <div class="mb-3">
                    <label for="exampleFormControlInput2" class="form-label">장르</label>
                    <input type="text" class="form-control" id="exampleFormControlInput2" placeholder="장르"
                        name="movieGenre">
                </div>
                <div class="mb-3">
                    <label for="exampleFormControlInput2" class="form-label">제작 국가</label>
                    <input type="text" class="form-control" id="exampleFormControlInput2" placeholder="제작 국가"
                        name="movieCountry">
                </div>
                <div class="mb-3">
                    <label for="exampleFormControlInput2" class="form-label">개봉일</label>
                    <input type="text" class="form-control" id="exampleFormControlInput2" placeholder="개봉일"
                        name="movieOpDay">
                </div>
                <div class="mb-3">
                    <label for="exampleFormControlInput2" class="form-label">이미지</label>
                    <input type="text" class="form-control" id="exampleFormControlInput2" placeholder="이미지"
                        name="movieImg">
                </div>

                <div class="mb-3">
                    <label for="exampleFormControlTextarea1" class="form-label">줄거리</label>
                    <textarea name="movieStory" class="form-control" id="exampleFormControlTextarea1" rows="10"></textarea>
                </div>
                        

                <div class="d-grid gap-2">
                    <button id="mod-btn" type="submit" class="btn btn-warning">완료</button>
                    <button id="list-btn" type="button" class="btn btn-dark">목록</button>
                </div>
            </form>

        </div>

        <script>
            const $listBtn = document.getElementById('list-btn');
            $listBtn.onclick = e => {
                location.href = '/admin/movies/list';
            };
        </script>
</body>

</html>