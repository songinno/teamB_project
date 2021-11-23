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
    rank NUMBER(10), -- 영화 순위 컬럼 추가
    update_date DATE,
    CONSTRAINT pk_movie_no PRIMARY KEY (movie_no)
);

INSERT into movies
(movie_no, movie_title, movie_op_day, movie_director, movie_actor, movie_genre, movie_country, movie_story, movie_img, movie_bg_img, rank)
values
(SEQ_MOVIE.nextval, '장르만 로맨스', '2021-11-17', '조은지', '류승룡, 오나라, 무진성, 김희원, 성유빈, 이유영', '코미디 / 드라마', '한국',
'매일매일 버라이어티한 그 작가의 사생활 개봉박두! 쿨내진동 이혼부부 일촉즉발 비밀커플 주객전도 스승제자 알쏭달쏭 이웃사촌 평범하지 않은 로맨스로 얽힌 이들의 사생활이 밝혀진다!',
'https://an2-img.amz.wtchn.net/image/v2/ff693f2671c804e7e54fb0c47fc07073.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPamN3TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpNMU9ERTJOVFl6TlRVNE5ETTVNRFl3SWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqbzBPVEI5Lm5wRGxvcHl1OTZvektROEU0ZUhuZW9QcGNsM3A5d2lIOTAzLTE5YVJhSVU'
, 'https://an2-img.amz.wtchn.net/image/v2/d547faa1193a10d07f4bbbd419789edf.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPamN5TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpNMU1qSTJPVGt6TWpRek9UQTFPREl5SWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqb3hNamd3ZlEuRHE0UHdqdVNNbXZCZHYyU293YVVJb3VGY1ZhZ3Q5LVR1X0FVanpBSk55WQ'
, 1);

INSERT into movies
(movie_no, movie_title, movie_op_day, movie_director, movie_actor, movie_genre, movie_country, movie_story, movie_img, movie_bg_img, rank)
values
(SEQ_MOVIE.nextval, '듄', '2021-10-20', '드니 빌뇌브', '티모시 샬라메, 레베카 퍼거슨, 오스카 아이삭, 젠데이아, 조쉬 브롤린', '모험 / 드라마 / SF','미국, 캐나다',
'10191년, 아트레이데스 가문의 후계자인 폴(티모시 샬라메)은 시공을 초월한 존재이자 전 우주를 구원할 예지된 자의 운명을 타고났다. 그리고 어떤 계시처럼 매일 꿈에서 아라키스 행성에 있는 한 여인을 만난다. 모래언덕을 뜻하는 "듄"이라 불리는 아라키스는 물 한 방울 없는 사막이지만 우주에서 가장 비싼 물질인 신성한 환각제 스파이스의 유일한 생산지로 이를 차지하기 위한 전쟁이 치열하다. 황제의 명령으로 폴과 아트레이데스 가문은 죽음이 기다리는 아라키스로 향하는데… 위대한 자는 부름에 응답한다, 두려움에 맞서라, 이것은 위대한 시작이다!',
'https://an2-img.amz.wtchn.net/image/v2/63456fa9804b8ba4729c5e61e4d540cb.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPamN3TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpNeU56a3hPREk1TXpBeE16VTRNalE1SWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqbzBPVEI5Lkpxci1MZWF1Nmx3YTZLNVM4V2RUWkRhdDhqanNQWkUzQkloWXpaSnkyREU'
, 'https://an2-img.amz.wtchn.net/image/v2/4123fd0faaaa1b6ba203292a557e16a4.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPamN5TUN3aWNHRjBhQ0k2SWk5Mk1TOXROR2cyWTNCNGQyUjBjbXgzZVdFeGVuVmxaU0lzSW5GMVlXeHBkSGtpT2pnd0xDSjNhV1IwYUNJNk1USTRNSDAuM3JDMFF4YWxPbTZIa0lXT3NVNFVIMXh2YURpckVPdTZCZnlFbXlYN3Y3Yw'
, 2);
INSERT into movies
(movie_no, movie_title, movie_op_day, movie_director, movie_actor, movie_genre, movie_country, movie_story, movie_img, movie_bg_img, rank)
values
(SEQ_MOVIE.nextval, '이터널스', '2021-11-03', '클로이 자오',
'젬마 찬, 리처드 매든, 안젤리나 졸리, 쿠마일 난지아니, 리아 맥휴, 마동석, 브라이언 타이리 헨리, 로렌 리들로프, 배리 키오건, 셀마 헤이엑', '판타지 / 액션 / 모험', '미국',
'마블 스튜디오의 <이터널스>는 수 천년에 걸쳐 그 모습을 드러내지 않고 살아온 불멸의 히어로들이 <어벤져스: 엔드게임> 이후 인류의 가장 오래된 적 데비안츠에 맞서기 위해 다시 힘을 합치면서 벌어지는 이야기',
'https://an2-img.amz.wtchn.net/image/v2/ab7acc4092fb3aefd19631b0de56d922.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPalF3TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpNMU56TTFORE0xTnpreE16UXdNems0SWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqb3lPREI5LjlkQUlCTy00eDltT1Jxc0ZzVGVkNFI1MENJdmRNMzdUckRpNDZvTzBiV0U',
'https://t1.daumcdn.net/movie/7fcc375ef4a9b96a73166bebb64c0fb347ad666e',3);

INSERT into movies
(movie_no, movie_title, movie_op_day, movie_director, movie_actor, movie_genre, movie_country, movie_story, movie_img, movie_bg_img, rank)
values
(SEQ_MOVIE.nextval, '엔칸토: 마법의 세계', '2021-11-24', '자레드 부시, 바이론 하워드, 채리스 카스트로 스미스',
'스테파니 베아트리즈, 존 레귀자모, 마리아 세실리아 보테로, 다이앤 게레로, 렌지 펠리즈, 제시카 대로우, 앤지 세페다, 윌머 발더라마, 캐롤리나 가이탄, 마우로 카스틸로', '애니메이션 / 모험 / 코미디', '미국',
'콜롬비아의 깊은 산 속, 놀라운 마법과 활기찬 매력이 넘치는 세계 ‘엔칸토’. 그 곳에는 특별한 능력을 지닌 마드리갈 패밀리가 살고 있다. ‘엔칸토’의 마법 덕분에 초인적 힘, 치유하는 힘 등 저마다 특별한 능력을 가지고 태어난 마드리갈 패밀리. 하지만 ‘미라벨’은 가족 중 유일하게 아무런 능력이 없다. 어느 날, ‘엔칸토’를 둘러싼 마법의 힘이 위험에 처하자 ‘미라벨’은 유일하게 평범한 자신이 특별한 이 가족의 마지막 희망일지 모른다고 생각하는데.. 평범한 ‘미라벨’은 과연 기적을 만들 수 있을까? 전 세대 관객들에게 따뜻한 웃음과 감동을 선사할 마법 같은 영화! 디즈니의 매직이 또 한 번 시작된다',
'https://an2-img.amz.wtchn.net/image/v2/309238c68bd0c8c0cd14ef5719ba6402.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPalF3TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpNMU9ETTBOVEk0TnpRMU1qTTNOalE1SWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqb3lPREI5LjFhYktZMzE1M0pmWVdPeVFzck9FWGNzVjB1dDFkdTdfeFM5XzJCaWwtbnc',
'https://t1.daumcdn.net/movie/ea029758912751b4140494eabe34ee0dba7e1a6c', 4);

INSERT into movies
(movie_no, movie_title, movie_op_day, movie_director, movie_actor, movie_genre, movie_country, movie_story, movie_img, movie_bg_img, rank)
values
(SEQ_MOVIE.nextval, '유체이탈자', '2021-11-24', '윤재근',
'윤계상, 박용우, 임지연, 박지환, 유승목, 이성욱, 김승현, 서현우', '미스터리 / 판타지 / 액션', '한국',
'“누가 진짜 나인지 모르겠어요” 교통사고 현장에서 눈을 뜬 한 남자. 거울에 비친 낯선 얼굴과 이름, 자신이 누구인지 기억이 나지 않는다. “또 바뀌었어. 낮에도 바뀌더니 밤에도 또” 잠시 후, 또 다른 사람의 몸에서 깨어난 남자. 그는 12시간마다 몸이 바뀐다는 사실을 깨닫게 되고, 자신을 둘러싼 사람들 사이의 연결고리를 찾기 시작한다. 그가 12시간마다 몸이 바뀌었던 사람들, 가는 곳마다 나타나는 의문의 여자까지, 그리고, 이들이 쫓고 있는 국가정보요원 ‘강이안’. “이제 알게 됐어. 내가 뭘 해야 되는지” 모두가 혈안이 되어 쫓고 있는 ‘강이안’이 바로 자신임을 직감한 남자, 자신을 찾기 위한 사투를 시작하는데… 진짜 나를 찾기 위한 본능적 액션이 시작된다!',
'https://an2-img.amz.wtchn.net/image/v2/aed6ed77f093980ebfba50d7ee1bcbba.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPalF3TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpNMU9USTBNalV3T1Rjek5qVTFPREV3SWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqb3lPREI5LkxPT1UxbkVXcjdnbmdkV2NhVS1XdXA2RUNmc0twNjVrZU1YWUVqTUtobmM',
'https://an2-img.amz.wtchn.net/image/v2/dd07b237696f565f989a0429d65cd0b1.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPamN5TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpNMU9ERTFOVFUzTVRFeU9EYzJPREV3SWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqb3hNamd3ZlEuYTVDSFNEYWpmWHJqMU94WXpFWWszdlZVUkNha3BrMjN5YS1uclZoMWk2TQ'
,5);

INSERT into movies
(movie_no, movie_title, movie_op_day, movie_director, movie_actor, movie_genre, movie_country, movie_story, movie_img, movie_bg_img, rank)
values
(SEQ_MOVIE.nextval, '강릉', '2021-11-10', '윤영빈', '유오성, 장혁, 박성근, 오대환, 신승환, 이채영, 한선화, 송영규, 김준배', '액션 / 범죄', '한국',
'강릉 최대 조직의 ‘길석’ 평화와 의리를 중요시하며 질서 있게 살아가던 그의 앞에 강릉 최대 리조트 소유권을 노린 남자 ‘민석’이 나타난다 첫 만남부터 서늘한 분위기가 감도는 둘, ‘민석’이 자신의 목표를 위해 본격적으로 움직이기 시작하면서 두 조직 사이에는 겉잡을 수 없는 전쟁이 시작되는데.. 거친 운명 앞에 놓인 두 남자 그들의 이야기가 시작된다'
,'https://an2-img.amz.wtchn.net/image/v2/754c42a8d5badadc347b1cca2875cec1.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPamN3TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpNMU56TTJNamM1TURBek16QTNOakEzSWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqbzBPVEI5LmhpdUFCVEM5MlVzeFhLUVVJV1BfTmoyaVlIdjJXSU9ITVAzbGJNU0x0OTg'
, 'https://search.pstatic.net/common?quality=75&direct=true&src=https%3A%2F%2Fmovie-phinf.pstatic.net%2F20211014_79%2F1634190055543menOz_JPEG%2Fmovie_image.jpg'
,6);

INSERT into movies
(movie_no, movie_title, movie_op_day, movie_director, movie_actor, movie_genre, movie_country, movie_story, movie_img, movie_bg_img, rank)
values
(SEQ_MOVIE.nextval, '디어 에반 핸슨', '2021-11-17', '스티븐 크보스키', '벤 플랫, 줄리안 무어, 에이미 아담스, 케이틀린 디버, 아만들라 스텐버그, 닉 도다니, 콜튼 라이언', '뮤지컬 / 드라마', '미국',
'자신감 제로, 존재감 제로, 어딜 가든 눈에 띄지 않는 소년 ‘에반 핸슨’은 매일 스스로에게 편지를 쓰며 어제와 다른 특별한 하루를 꿈꾼다. 어느 날, 자신에게 쓴 편지를 ‘코너’에게 빼앗긴 에반 핸슨. 며칠 뒤 갑작스러운 코너의 죽음으로 인해 자신의 편지를 코너의 유서로 오해하고 찾아온 그의 가족은 따뜻한 관심을 표하고 누군가가 자신을 알아봐 주길 바라온 에반 핸슨은 그들의 따뜻함에 얼떨결에 코너와의 우정과 추억에 대한 기억을 만들어내게 되며 모두의 마음을 움직이게 되는데… 세상에 혼자 남겨진 것 같은 순간 에반이 당신을 찾아갑니다.'
,'https://search.pstatic.net/common?quality=75&direct=true&src=https%3A%2F%2Fmovie-phinf.pstatic.net%2F20211013_44%2F1634090696216vDR6R_JPEG%2Fmovie_image.jpg'
, 'https://search.pstatic.net/common?quality=75&direct=true&src=https%3A%2F%2Fmovie-phinf.pstatic.net%2F20211022_207%2F1634884009760FmIWF_JPEG%2Fmovie_image.jpg'
,7);

INSERT into movies
(movie_no, movie_title, movie_op_day, movie_director, movie_actor, movie_genre, movie_country, movie_story, movie_img, movie_bg_img, rank)
values
(SEQ_MOVIE.nextval, '아담스 패밀리 2', '2021-11-10', '그렉 티어난, 콘래드 버논', '오스카 아이삭, 샤를리즈 테론, 클로이 모레츠, 닉 크롤, 제이본 워너 월튼', '애니메이션', '미국, 영국, 캐나다',
'평범함과는 거리가 먼 호러블리 아담스 패밀리에게 닥친 최대 위기. 아이들은 사춘기에 접어들고, 권태로운 가족 분위기에 위기를 느낀 아빠 ‘고메즈’와 엄마 ‘모티시아’는 가족들의 화합을 위해 나이아가라 폭포에서 그랜드 캐니언까지 미국을 가로지르는 가족 여행을 떠난다. 하지만, 어쩐지 태생부터 남달랐던 ‘웬즈데이’의 놀라운 비밀이 밝혀지면서 ‘웬즈데이’의 사춘기는 절정에 이르고, 아담스 패밀리의 여행은 점점 더 신나고, 점점 더 절망적인 상황으로 치닫는데…'
,'https://search.pstatic.net/common?quality=75&direct=true&src=https%3A%2F%2Fmovie-phinf.pstatic.net%2F20211110_170%2F1636522953153AbQfv_JPEG%2Fmovie_image.jpg'
, 'https://search.pstatic.net/common?quality=75&direct=true&src=https%3A%2F%2Fmovie-phinf.pstatic.net%2F20211021_88%2F1634778460505oJEks_JPEG%2Fmovie_image.jpg'
,8);

INSERT into movies
(movie_no, movie_title, movie_op_day, movie_director, movie_actor, movie_genre, movie_country, movie_story, movie_img, movie_bg_img, rank)
values
(SEQ_MOVIE.nextval, '프렌치 디스패치', '2021-11-18', '웨스 앤더슨', '틸다 스윈튼, 프란시스 맥도맨드, 빌 머레이, 제프리 라이트, 애드리언 브로디', '코미디 / 드라마 / 로맨스', '미국',
'20세기 초 프랑스에 위치한 오래된 가상의 도시 블라제 다양한 사건의 희로애락을 담아내는 미국 매거진 ‘프렌치 디스패치’ 어느 날, 갑작스러운 편집장의 죽음으로 최정예 저널리스트들이 한자리에 모이고 마지막 발행본에 실을 4개의 특종에 대한 이야기를 시작하는데…! 당신을 매료시킬 마지막 기사가 지금 공개된다!'
,'https://search.pstatic.net/common?quality=75&direct=true&src=https%3A%2F%2Fmovie-phinf.pstatic.net%2F20211021_101%2F1634786145985rjNpq_JPEG%2Fmovie_image.jpg'
, 'https://search.pstatic.net/common?quality=75&direct=true&src=https%3A%2F%2Fmovie-phinf.pstatic.net%2F20210916_275%2F1631756515018q8FA8_JPEG%2Fmovie_image.jpg'
,9);

INSERT into movies
(movie_no, movie_title, movie_op_day, movie_director, movie_actor, movie_genre, movie_country, movie_story, movie_img, movie_bg_img, rank)
values
(SEQ_MOVIE.nextval, '태일이', '2021-12-01', '홍준표', '장동윤, 염혜란, 진선규, 박철민, 권해효', '애니메이션', '한국',
'1970년 평화시장, 부당한 노동 환경을 바꾸기 위해 뜨겁게 싸웠던 청년 ‘전태일’의 이야기를 그린 애니메이션 영화.'
,'https://search.pstatic.net/common?quality=75&direct=true&src=https%3A%2F%2Fmovie-phinf.pstatic.net%2F20211109_134%2F1636448495538XjbNi_JPEG%2Fmovie_image.jpg',
'https://search.pstatic.net/common?quality=75&direct=true&src=https%3A%2F%2Fmovie-phinf.pstatic.net%2F20211026_20%2F1635221017410vkAGK_JPEG%2Fmovie_image.jpg'
,10);


select * from movies;
drop table movies;

--set define off;  -> 대체변수 어쩌구 뜨시는분
commit;