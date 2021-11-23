------ #DDL) TABLE Grade------
--영화 별점 및 코멘트 등록 정보 테이블
CREATE TABLE grade (
    grade_no NUMBER(20) -- 등록번호(pk)
    , movie_no NUMBER(20) -- 영화 등록번호(fk)
    , grade_writer VARCHAR2(50) NOT NULL
    , grade NUMBER(5,2) DEFAULT 0 -- 별점
    , grade_comment VARCHAR2(3000) -- 코멘트
    , grade_date DATE DEFAULT SYSTIMESTAMP --별점 등록일자
    , CONSTRAINT pk_grade PRIMARY KEY (grade_no)
    , CONSTRAINT fk_grade_movies FOREIGN KEY (movie_no) REFERENCES movies (movie_no)
);

CREATE SEQUENCE seq_grade;

--연습용 더미
INSERT INTO grade VALUES (seq_grade.nextval,1, '관리자', 4.5,'장르만 로맨스 보니 연애하고싶어졌어요', SYSDATE);
INSERT INTO grade VALUES (seq_grade.nextval,3, '강아지', 3.0,'이터널스 너무너무 재밌었어요 111', SYSDATE);
INSERT INTO grade VALUES (seq_grade.nextval,3, '장수풍뎅이', 0,'이터널스 개재미없음', SYSDATE);
commit;