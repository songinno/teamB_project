------ #DDL) TABLE Movies------
--현재 상영 영화정보 테이블

CREATE SEQUENCE seq_movie;
DROP SEQUENCE seq_movie;

CREATE TABLE movies (
    movie_no NUMBER(20),
    movie_title VARCHAR2(100) NOT NULL,
    movie_op_day varchar2(20),
    movie_director varchar2(20) NOT NULL,
    movie_actor VARCHAR2(500),
    movie_genre VARCHAR2(20),
    movie_country VARCHAR2(20),
    movie_story VARCHAR2(2000),
    movie_img VARCHAR2(4000),
    movie_bg_img VARCHAR2(4000), -- 영화 배경 이미지 추가
    reg_date DATE DEFAULT SYSDATE, --데이터 등록일 컬럼 추가
    CONSTRAINT pk_movie_no PRIMARY KEY (movie_no)
);

-- 데이터 수정시간 기록 컬럼
ALTER TABLE movies ADD update_date DATE;