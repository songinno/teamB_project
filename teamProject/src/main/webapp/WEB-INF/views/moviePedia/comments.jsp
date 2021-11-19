<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <%@ include file="../include/static-head.jsp" %>

    <style>
        .comments-wrapper {
            padding: 100px 0;
            margin: 0 auto;
            width: 30vw;
            height: 400px;
            border: 3px solid rgb(72, 187, 107);
        }
        .comments-wrapper .comment-box {
            width: 100%;
            border-top: 1px solid rgb(128, 179, 9);
            border-bottom: 1px solid rgb(128, 179, 9);
            margin-bottom: 30px;
            padding: 20px 10px;

            display: flex;
        }
        
        .comments-wrapper .comment-box h1 {
            margin-right: 20px;
        }
        .comments-wrapper .comment-box button {

        }
    </style>
</head>

<body>
    <div class="wrap">

        <!-- header -->
        <%@ include file="../include/header.jsp" %>
        <!-- //header -->

        <div class="comments-wrapper">
            <div class="comment-box">
                <h1>가나다</h1>
                <h1>디어에반헨슨(3번영화)</h1>
                <p>재밌었어요(3번영화의 코멘트)</p>
                <button type="button"><span class="lnr lnr-thumbs-up"></span></button>

            </div>
            <div class="comment-box">
                <h1>사아자</h1>
                <h1>이터널스(2번영화)</h1>
                <p>재미없었음(2번영화 코멘트)</p>
                <button type="button"><span class="lnr lnr-thumbs-up"></span></button>

            </div>
            <div class="comment-box">
                <h1>라마바</h1>
                <h1>장르만로맨스(1번영화)</h1>
                <p>너무 재밌었어요(1번영화 댓글)</p>
                <button type="button"><span class="lnr lnr-thumbs-up"></span></button>
            </div>
        </div>

        <!-- footer -->
        <%@ include file="../include/footer.jsp" %>
        <!-- //footer -->


    </div>
</body>

</html>