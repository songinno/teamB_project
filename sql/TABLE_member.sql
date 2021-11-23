------ #DDL) TABLE Members------
--회원정보 테이블
CREATE SEQUENCE seq_member;
drop sequence seq_member;

CREATE TABLE members (
    mem_no NUMBER(20),
    mem_name VARCHAR2(50) NOT NULL,
    mem_email VARCHAR2(100) NOT NULL UNIQUE,
    mem_password VARCHAR2(150) NOT NULL,
    auth VARCHAR2(20) DEFAULT 'COMMON',
    mem_joindate DATE DEFAULT SYSDATE,
    CONSTRAINT pk_mem_no PRIMARY KEY (mem_no)
);

--*더미 데이터 생성
INSERT INTO members (mem_no, mem_name, mem_email, mem_password, auth)
VALUES (0, '관리자','admin@moviepedia.com', 'm1234', 'ADMIN'); --관리자계정


select * from members;
drop table members;
COMMIT;


------ #DDL) TABLE Movies------
--현재 상영 영화정보 테이블

CREATE SEQUENCE seq_movie;
DROP SEQUENCE seq_movie;

CREATE TABLE movies (
    movie_no NUMBER(20),
    movie_title VARCHAR2(100) NOT NULL,
    movie_op_day varchar2(20),
    movie_director varchar2(100) NOT NULL,
    movie_actor VARCHAR2(1000),
    movie_genre VARCHAR2(100),
    movie_country VARCHAR2(100),
    movie_story VARCHAR2(3000),
    movie_img VARCHAR2(4000),
    movie_bg_img VARCHAR2(4000), -- 영화 배경 이미지 추가
    reg_date DATE DEFAULT SYSDATE, --데이터 등록일 컬럼 추가
    update_date DATE,
    CONSTRAINT pk_movie_no PRIMARY KEY (movie_no)
);


---- 영화 배경 이미지 추가 (테이블 새로 안만들려면 이걸로 추가)
--ALTER TABLE movies ADD movie_bg_img VARCHAR2(4000);

INSERT into movies
(movie_no, movie_title, movie_op_day, movie_director, movie_actor, movie_genre, movie_country, movie_story, movie_img, movie_bg_img)
values 
(SEQ_MOVIE.nextval, '장르만 로맨스', '2021-11-17', '조은지', '류승룡, 오나라, 무진성, 김희원, 성유빈, 이유영', '코미디 / 드라마', '한국',
'매일매일 버라이어티한 그 작가의 사생활 개봉박두! 쿨내진동 이혼부부 일촉즉발 비밀커플 주객전도 스승제자 알쏭달쏭 이웃사촌 평범하지 않은 로맨스로 얽힌 이들의 사생활이 밝혀진다!',
'https://an2-img.amz.wtchn.net/image/v2/ff693f2671c804e7e54fb0c47fc07073.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPamN3TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpNMU9ERTJOVFl6TlRVNE5ETTVNRFl3SWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqbzBPVEI5Lm5wRGxvcHl1OTZvektROEU0ZUhuZW9QcGNsM3A5d2lIOTAzLTE5YVJhSVU'
, 'https://an2-img.amz.wtchn.net/image/v2/d547faa1193a10d07f4bbbd419789edf.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPamN5TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpNMU1qSTJPVGt6TWpRek9UQTFPREl5SWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqb3hNamd3ZlEuRHE0UHdqdVNNbXZCZHYyU293YVVJb3VGY1ZhZ3Q5LVR1X0FVanpBSk55WQ');

INSERT into movies
(movie_no, movie_title, movie_op_day, movie_director, movie_actor, movie_genre, movie_country, movie_story, movie_img, movie_bg_img)
values 
(SEQ_MOVIE.nextval, '듄', '2021-10-20', '드니 빌뇌브', '티모시 샬라메, 레베카 퍼거슨, 오스카 아이삭, 젠데이아, 조쉬 브롤린', '모험 / 드라마 / SF','미국, 캐나다',
'10191년, 아트레이데스 가문의 후계자인 폴(티모시 샬라메)은 시공을 초월한 존재이자 전 우주를 구원할 예지된 자의 운명을 타고났다. 그리고 어떤 계시처럼 매일 꿈에서 아라키스 행성에 있는 한 여인을 만난다. 모래언덕을 뜻하는 "듄"이라 불리는 아라키스는 물 한 방울 없는 사막이지만 우주에서 가장 비싼 물질인 신성한 환각제 스파이스의 유일한 생산지로 이를 차지하기 위한 전쟁이 치열하다. 황제의 명령으로 폴과 아트레이데스 가문은 죽음이 기다리는 아라키스로 향하는데… 위대한 자는 부름에 응답한다, 두려움에 맞서라, 이것은 위대한 시작이다!',
'https://an2-img.amz.wtchn.net/image/v2/63456fa9804b8ba4729c5e61e4d540cb.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPamN3TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpNeU56a3hPREk1TXpBeE16VTRNalE1SWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqbzBPVEI5Lkpxci1MZWF1Nmx3YTZLNVM4V2RUWkRhdDhqanNQWkUzQkloWXpaSnkyREU'
, 'https://an2-img.amz.wtchn.net/image/v2/4123fd0faaaa1b6ba203292a557e16a4.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPamN5TUN3aWNHRjBhQ0k2SWk5Mk1TOXROR2cyWTNCNGQyUjBjbXgzZVdFeGVuVmxaU0lzSW5GMVlXeHBkSGtpT2pnd0xDSjNhV1IwYUNJNk1USTRNSDAuM3JDMFF4YWxPbTZIa0lXT3NVNFVIMXh2YURpckVPdTZCZnlFbXlYN3Y3Yw');

INSERT into movies
(movie_no, movie_title, movie_op_day, movie_director, movie_actor, movie_genre, movie_country, movie_story, movie_img, movie_bg_img)
values 
(SEQ_MOVIE.nextval, '이터널스', '2021-11-03', '클로이 자오', 
'젬마 찬, 리처드 매든, 안젤리나 졸리, 쿠마일 난지아니, 리아 맥휴, 마동석, 브라이언 타이리 헨리, 로렌 리들로프, 배리 키오건, 셀마 헤이엑', '판타지 / 액션 / 모험', '미국',
'마블 스튜디오의 <이터널스>는 수 천년에 걸쳐 그 모습을 드러내지 않고 살아온 불멸의 히어로들이 <어벤져스: 엔드게임> 이후 인류의 가장 오래된 적 데비안츠에 맞서기 위해 다시 힘을 합치면서 벌어지는 이야기',
'https://an2-img.amz.wtchn.net/image/v2/ab7acc4092fb3aefd19631b0de56d922.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPalF3TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpNMU56TTFORE0xTnpreE16UXdNems0SWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqb3lPREI5LjlkQUlCTy00eDltT1Jxc0ZzVGVkNFI1MENJdmRNMzdUckRpNDZvTzBiV0U', 'https://an2-img.amz.wtchn.net/image/v2/2a2c878706c0e72a7a01c72fe15b34ce.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPamN5TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpNeE5qRTJOVGs0TkRnNE56Y3lNVFkySWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqb3hNamd3ZlEucHRiQmo1aG5wZUtzY1NyRWhoWU9ncFV5RmVEb0FFMnVTZG5rUl9IU0U1MA');

INSERT into movies
(movie_no, movie_title, movie_op_day, movie_director, movie_actor, movie_genre, movie_country, movie_story, movie_img, movie_bg_img)
values 
(SEQ_MOVIE.nextval, '엔칸토: 마법의 세계', '2021-11-24', '자레드 부시, 바이론 하워드, 채리스 카스트로 스미스', 
'스테파니 베아트리즈, 존 레귀자모, 마리아 세실리아 보테로, 다이앤 게레로, 렌지 펠리즈, 제시카 대로우, 앤지 세페다, 윌머 발더라마, 캐롤리나 가이탄, 마우로 카스틸로', '애니메이션 / 모험 / 코미디', '미국',
'콜롬비아의 깊은 산 속, 놀라운 마법과 활기찬 매력이 넘치는 세계 ‘엔칸토’. 그 곳에는 특별한 능력을 지닌 마드리갈 패밀리가 살고 있다. ‘엔칸토’의 마법 덕분에 초인적 힘, 치유하는 힘 등 저마다 특별한 능력을 가지고 태어난 마드리갈 패밀리. 하지만 ‘미라벨’은 가족 중 유일하게 아무런 능력이 없다. 어느 날, ‘엔칸토’를 둘러싼 마법의 힘이 위험에 처하자 ‘미라벨’은 유일하게 평범한 자신이 특별한 이 가족의 마지막 희망일지 모른다고 생각하는데.. 평범한 ‘미라벨’은 과연 기적을 만들 수 있을까? 전 세대 관객들에게 따뜻한 웃음과 감동을 선사할 마법 같은 영화! 디즈니의 매직이 또 한 번 시작된다',
'https://an2-img.amz.wtchn.net/image/v2/309238c68bd0c8c0cd14ef5719ba6402.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPalF3TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpNMU9ETTBOVEk0TnpRMU1qTTNOalE1SWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqb3lPREI5LjFhYktZMzE1M0pmWVdPeVFzck9FWGNzVjB1dDFkdTdfeFM5XzJCaWwtbnc', 'https://an2-img.amz.wtchn.net/image/v2/4448f318aa1e096775730cd3730ec6bf.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPamN5TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpJMU9EUTFNRGMzTXpjMU1EQXpPRFF3SWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqb3hNamd3ZlEuOXdEWE9GYjBNTUVZYmEzRDJ5aWt4MDMydl9MZE5LV3l0MElrTTVXbzhzOA');

INSERT into movies
(movie_no, movie_title, movie_op_day, movie_director, movie_actor, movie_genre, movie_country, movie_story, movie_img, movie_bg_img)
values 
(SEQ_MOVIE.nextval, '유체이탈자', '2021-11-24', '윤재근', 
'윤계상, 박용우, 임지연, 박지환, 유승목, 이성욱, 김승현, 서현우', '미스터리 / 판타지 / 액션', '한국',
'“누가 진짜 나인지 모르겠어요” 교통사고 현장에서 눈을 뜬 한 남자. 거울에 비친 낯선 얼굴과 이름, 자신이 누구인지 기억이 나지 않는다. “또 바뀌었어. 낮에도 바뀌더니 밤에도 또” 잠시 후, 또 다른 사람의 몸에서 깨어난 남자. 그는 12시간마다 몸이 바뀐다는 사실을 깨닫게 되고, 자신을 둘러싼 사람들 사이의 연결고리를 찾기 시작한다. 그가 12시간마다 몸이 바뀌었던 사람들, 가는 곳마다 나타나는 의문의 여자까지, 그리고, 이들이 쫓고 있는 국가정보요원 ‘강이안’. “이제 알게 됐어. 내가 뭘 해야 되는지” 모두가 혈안이 되어 쫓고 있는 ‘강이안’이 바로 자신임을 직감한 남자, 자신을 찾기 위한 사투를 시작하는데… 진짜 나를 찾기 위한 본능적 액션이 시작된다!',
'https://an2-img.amz.wtchn.net/image/v2/aed6ed77f093980ebfba50d7ee1bcbba.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPalF3TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpNMU9USTBNalV3T1Rjek5qVTFPREV3SWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqb3lPREI5LkxPT1UxbkVXcjdnbmdkV2NhVS1XdXA2RUNmc0twNjVrZU1YWUVqTUtobmM', 'https://an2-img.amz.wtchn.net/image/v2/dd07b237696f565f989a0429d65cd0b1.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPamN5TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpNMU9ERTFOVFUzTVRFeU9EYzJPREV3SWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqb3hNamd3ZlEuYTVDSFNEYWpmWHJqMU94WXpFWWszdlZVUkNha3BrMjN5YS1uclZoMWk2TQ');

INSERT into movies
(movie_no, movie_title, movie_op_day, movie_director, movie_actor, movie_genre, movie_country, movie_story, movie_img, movie_bg_img)
values 
(SEQ_MOVIE.nextval, '장르만 로맨스', '2021-11-17', '조은지', '류승룡, 오나라, 무진성, 김희원, 성유빈, 이유영', '코미디 / 드라마', '한국',
'매일매일 버라이어티한 그 작가의 사생활 개봉박두! 쿨내진동 이혼부부 일촉즉발 비밀커플 주객전도 스승제자 알쏭달쏭 이웃사촌 평범하지 않은 로맨스로 얽힌 이들의 사생활이 밝혀진다!',
'https://an2-img.amz.wtchn.net/image/v2/ff693f2671c804e7e54fb0c47fc07073.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPamN3TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpNMU9ERTJOVFl6TlRVNE5ETTVNRFl3SWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqbzBPVEI5Lm5wRGxvcHl1OTZvektROEU0ZUhuZW9QcGNsM3A5d2lIOTAzLTE5YVJhSVU'
, 'https://an2-img.amz.wtchn.net/image/v2/d547faa1193a10d07f4bbbd419789edf.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPamN5TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpNMU1qSTJPVGt6TWpRek9UQTFPREl5SWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqb3hNamd3ZlEuRHE0UHdqdVNNbXZCZHYyU293YVVJb3VGY1ZhZ3Q5LVR1X0FVanpBSk55WQ');

select * from movies;
drop table movies;

commit;



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
DROP SEQUENCE seq_grade;

SELECT * FROM grade;
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




--#grade 테이블 더미데이터        
--INSERT INTO grade (grade_no, mem_no, movie_no, grade, grade_comment)
--VALUES (seq_grade.nextval, 2, 3, 4.5, '디어에반핸슨 재밌어요ㅎㅎ');
--INSERT INTO grade (grade_no, mem_no, movie_no, grade, grade_comment)
--VALUES (seq_grade.nextval, 1, 1, 3.5, '장르만로맨스 재밌어요ㅎㅎ');
--INSERT INTO grade (grade_no, mem_no, movie_no, grade, grade_comment)
--VALUES (seq_grade.nextval, 3, 2, 5, '이터널스 재밌어요ㅎㅎ');



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
















