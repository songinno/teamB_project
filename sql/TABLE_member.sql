------ #DDL) TABLE Members------
--회원정보 테이블
CREATE TABLE Members (
    mem_no NUMBER(20) -- 회원등록번호(pk)
    , mem_name VARCHAR2(50) --회원이름
    , mem_email VARCHAR2(100) --회원 이메일
    , mem_password VARCHAR2 (100) -- 비밀번호
    , mem_joindate DATE DEFAULT SYSTIMESTAMP
    , CONSTRAINT pk_mem_no PRIMARY KEY (mem_no)
);
ALTER TABLE members ADD CONSTRAINT uniq_mem_email UNIQUE (mem_email);

CREATE SEQUENCE seq_members;
--DROP SEQUENCE seq_members;

--SELECT * FROM members;
--DROP TABLE members;


------ #DDL) TABLE Movies------
--현재 상영 영화정보 테이블
CREATE TABLE Movies (
    movie_no NUMBER(20) -- 영화 등록번호(pk)
    , movie_title VARCHAR2(100) -- 영화 제목
    , movie_op_day DATE -- 영화 개봉일
    , movie_actor VARCHAR2(500) -- 출연진
    , movie_genre VARCHAR2(20) -- 장르
    , movie_country VARCHAR2(20) -- 국가
    , movie_story VARCHAR2(2000) -- 줄거리
    
    , CONSTRAINT pk_movie_no PRIMARY KEY (movie_no)
);


CREATE SEQUENCE seq_movies;
--DROP SEQUENCE seq_movies;

--SELECT * FROM movies;
--DROP TABLE movies;


------ #DDL) TABLE Grade------
--영화 별점 및 코멘트 등록 정보 테이블
CREATE TABLE Grade (
    grade_no NUMBER(20) -- 등록번호(pk)
    , mem_no NUMBER(20) -- 회원 등록번호(fk)
    , movie_no NUMBER(20) -- 영화 등록번호(fk)
    , grade NUMBER(5,2) -- 별점
    , grade_comment VARCHAR2(3000) -- 코멘트
    , grade_date DATE DEFAULT SYSTIMESTAMP --별점 등록일자
    , CONSTRAINT pk_grade_no PRIMARY KEY (grade_no)
    , CONSTRAINT fk_grade_mem_no FOREIGN KEY (mem_no) REFERENCES members (mem_no)
    , CONSTRAINT fk_grade_movie_no FOREIGN KEY (movie_no) REFERENCES movies (movie_no)
);

CREATE SEQUENCE seq_grade;
--DROP SEQUENCE seq_grade;

--SELECT * FROM grade;
--DROP TABLE grade;

------ #DDL) TABLE Like_History ------
--좋아요 누른 이력 정보 테이블
--CREATE TABLE Like_history (
--    like_his_no NUMBER(20) -- (pk) 등록번호
--    , mem_no NUMBER(20) -- (fk) (좋아요 누른) 회원이름
--    , grade_no NUMBER(20) -- (fk) (좋아요 누른) 코멘트의 등록번호
--);

--CREATE SEQUENCE seq_like_his; 


--CREATE SEQUENCE seq_like_his;
--DROP SEQUENCE seq_like_his;


------ # DDL TABLE Request_Board ------
--고객문의글 데이터

--CREATE TABLE Request_Board (
--    rb_no NUMBER(20) -- 문의글번호(pk)
--    , mem_no NUMBER(20) --회원등록번호(fk)
--    , rb_title VARCHAR2(100) -- 문의글 제목
--    , rb_content VARCHAR2(2000) -- 문의글 내용
--    , rb_write_date DATE DEFAULT SYSTIMESTAMP -- 문의글 등록일
--    
--    , CONSTRAINT pk_rb_no PRIMARY KEY (rb_no)
--    , CONSTRAINT fk_rb_mem_no FOREIGN KEY (mem_no) REFERENCES members (mem_no)
--);

--CREATE SEQUENCE seq_rb;
--DROP SEQUENCE seq_rb;

--SELECT * FROM request_board;
--DROP TABLE request_board;


------# DDL TABLE Answer_Board------
--고객문의 답변 데이터
--CREATE TABLE Answer_Board (
--    ab_no NUMBER(20) -- 답변 일련번호(pk)
--    , rb_no NUMBER(20) -- 문의글 일련번호(fk)
--    , ab_title VARCHAR2(100) -- 답변 제목
--    , ab_content VARCHAR2(2000) -- 답변 내용
--    , ab_write_date DATE DEFAULT SYSTIMESTAMP -- 답변 등록일
--    
--    , CONSTRAINT pk_ab_no PRIMARY KEY (ab_no)
--    , CONSTRAINT fk_ab_rb_no FOREIGN KEY (rb_no) REFERENCES request_board (rb_no)
--);
--
--CREATE SEQUENCE seq_ab;
--DROP SEQUENCE seq_ab;
--
--SELECT * FROM answer_board;
--DROP TABLE answer_board;

--*더미 데이터 생성
INSERT INTO members (mem_no, mem_name, mem_email, mem_password)
VALUES (seq_members.nextval, '가나다', 'abc123@naver.com', 'a1234');
INSERT INTO members (mem_no, mem_name, mem_email, mem_password)
VALUES (seq_members.nextval, '라마바', 'def456@naver.com', 'b1234');
INSERT INTO members (mem_no, mem_name, mem_email, mem_password)
VALUES (seq_members.nextval, '사아자', 'ghi789@naver.com', 'c1234');

INSERT INTO movies
VALUES (seq_movies.nextval, '장르만로맨스', '2021-11-17', '류승룡, 오나라, 김희원'
        , '로맨스', '대한민국'
        , '매일매일 버라이어티한 그 작가의 사생활 개봉박두!...'); 
INSERT INTO movies
VALUES (seq_movies.nextval, '이터널스', '2021-11-03', '안젤리나졸리, 마동석'
        ,'액션', '미국'
        , '마블 스튜디오의 <이터널스>는 수 천년에 걸쳐 그 모습을 드러내지 않고 살아온...');
INSERT INTO movies
VALUES (seq_movies.nextval, '디어에반핸슨', '2021-11-17', '벤플랫,줄리안무어'
        , '뮤지컬', '미국' 
        , '자신감 제로, 존재감 제로, 어딜 가든 눈에 띄지 않는 소년 ‘에반 핸슨’은...'); 
INSERT INTO grade (grade_no, mem_no, movie_no, grade, grade_comment)
VALUES (seq_grade.nextval, 2, 3, 4.5, '디어에반핸슨 재밌어요ㅎㅎ');
INSERT INTO grade (grade_no, mem_no, movie_no, grade, grade_comment)
VALUES (seq_grade.nextval, 1, 1, 3.5, '장르만로맨스 재밌어요ㅎㅎ');
INSERT INTO grade (grade_no, mem_no, movie_no, grade, grade_comment)
VALUES (seq_grade.nextval, 3, 2, 5, '이터널스 재밌어요ㅎㅎ');

--#좋아요 테이블 더미데이터
--INSERT INTO like_history VALUES (seq_like_his.nextval, 1, 1);
--INSERT INTO like_history VALUES (seq_like_his.nextval, 1, 3);
--INSERT INTO like_history VALUES (seq_like_his.nextval, 2, 2);
--INSERT INTO like_history VALUES (seq_like_his.nextval, 2, 3);
--INSERT INTO like_history VALUES (seq_like_his.nextval, 3, 3);

--테이블 없애버리기
drop table answer_board;
drop table request_board;
drop table like_history;
drop table grade;
drop table movies;
drop table members;
















