------ #DDL) TABLE Members------
--회원정보 테이블
CREATE SEQUENCE seq_member;


CREATE TABLE Members (
    mem_no NUMBER(20) -- 회원등록번호(pk)
    , mem_name VARCHAR2(50) --회원이름
    , mem_email VARCHAR2(100) --회원 이메일
    , mem_password VARCHAR2 (100) -- 비밀번호
    , mem_joindate DATE DEFAULT SYSTIMESTAMP
    , CONSTRAINT pk_mem_no PRIMARY KEY (mem_no)
);
ALTER TABLE members ADD CONSTRAINT uniq_mem_email UNIQUE (mem_email);

--*더미 데이터 생성
INSERT INTO members VALUES (0, '관리자','admin@moviepedia.com', 'm1234', SYSTIMESTAMP); --관리자계정

INSERT INTO members (mem_no, mem_name, mem_email, mem_password)
VALUES (seq_member.nextval, '가나다', 'abc123@naver.com', 'a1234');

INSERT INTO members (mem_no, mem_name, mem_email, mem_password)
VALUES (seq_member.nextval, '라마바', 'def456@naver.com', 'b1234');

INSERT INTO members (mem_no, mem_name, mem_email, mem_password)
VALUES (seq_member.nextval, '사아자', 'ghi789@naver.com', 'c1234');

select * from members;
drop table members;
COMMIT;