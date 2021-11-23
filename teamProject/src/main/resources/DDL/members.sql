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