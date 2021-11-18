------ #DDL) TABLE Members------
--ȸ������ ���̺�
CREATE TABLE Members (
    mem_no NUMBER(20) -- ȸ����Ϲ�ȣ(pk)
    , mem_name VARCHAR2(50) --ȸ���̸�
    , mem_email VARCHAR2(100) --ȸ�� �̸���
    , mem_password VARCHAR2 (100) -- ��й�ȣ
    , mem_joindate DATE DEFAULT SYSTIMESTAMP
    , CONSTRAINT pk_mem_no PRIMARY KEY (mem_no)
);
ALTER TABLE members ADD CONSTRAINT uniq_mem_email UNIQUE (mem_email);

CREATE SEQUENCE seq_members;
--DROP SEQUENCE seq_members;

--SELECT * FROM members;
--DROP TABLE members;


------ #DDL) TABLE Movies------
--���� �� ��ȭ���� ���̺�
CREATE TABLE Movies (
    movie_no NUMBER(20) -- ��ȭ ��Ϲ�ȣ(pk)
    , movie_title VARCHAR2(100) -- ��ȭ ����
    , movie_op_day DATE -- ��ȭ ������
    , movie_actor VARCHAR2(500) -- �⿬��
    , movie_genre VARCHAR2(20) -- �帣
    , movie_country VARCHAR2(20) -- ����
    , movie_story VARCHAR2(2000) -- �ٰŸ�
    
    , CONSTRAINT pk_movie_no PRIMARY KEY (movie_no)
);


CREATE SEQUENCE seq_movies;
--DROP SEQUENCE seq_movies;

--SELECT * FROM movies;
--DROP TABLE movies;


------ #DDL) TABLE Grade------
--��ȭ ���� �� �ڸ�Ʈ ��� ���� ���̺�
CREATE TABLE Grade (
    grade_no NUMBER(20) -- ��Ϲ�ȣ(pk)
    , mem_no NUMBER(20) -- ȸ�� ��Ϲ�ȣ(fk)
    , movie_no NUMBER(20) -- ��ȭ ��Ϲ�ȣ(fk)
    , grade NUMBER(5,2) -- ����
    , grade_comment VARCHAR2(3000) -- �ڸ�Ʈ
    , grade_date DATE DEFAULT SYSTIMESTAMP --���� �������
    , CONSTRAINT pk_grade_no PRIMARY KEY (grade_no)
    , CONSTRAINT fk_grade_mem_no FOREIGN KEY (mem_no) REFERENCES members (mem_no)
    , CONSTRAINT fk_grade_movie_no FOREIGN KEY (movie_no) REFERENCES movies (movie_no)
);

CREATE SEQUENCE seq_grade;
--DROP SEQUENCE seq_grade;

--SELECT * FROM grade;
--DROP TABLE grade;

------ #DDL) TABLE Like_History ------
--���ƿ� ���� �̷� ���� ���̺�
--CREATE TABLE Like_history (
--    like_his_no NUMBER(20) -- (pk) ��Ϲ�ȣ
--    , mem_no NUMBER(20) -- (fk) (���ƿ� ����) ȸ���̸�
--    , grade_no NUMBER(20) -- (fk) (���ƿ� ����) �ڸ�Ʈ�� ��Ϲ�ȣ
--);

--CREATE SEQUENCE seq_like_his; 


--CREATE SEQUENCE seq_like_his;
--DROP SEQUENCE seq_like_his;


------ # DDL TABLE Request_Board ------
--�����Ǳ� ������

--CREATE TABLE Request_Board (
--    rb_no NUMBER(20) -- ���Ǳ۹�ȣ(pk)
--    , mem_no NUMBER(20) --ȸ����Ϲ�ȣ(fk)
--    , rb_title VARCHAR2(100) -- ���Ǳ� ����
--    , rb_content VARCHAR2(2000) -- ���Ǳ� ����
--    , rb_write_date DATE DEFAULT SYSTIMESTAMP -- ���Ǳ� �����
--    
--    , CONSTRAINT pk_rb_no PRIMARY KEY (rb_no)
--    , CONSTRAINT fk_rb_mem_no FOREIGN KEY (mem_no) REFERENCES members (mem_no)
--);

--CREATE SEQUENCE seq_rb;
--DROP SEQUENCE seq_rb;

--SELECT * FROM request_board;
--DROP TABLE request_board;


------# DDL TABLE Answer_Board------
--������ �亯 ������
--CREATE TABLE Answer_Board (
--    ab_no NUMBER(20) -- �亯 �Ϸù�ȣ(pk)
--    , rb_no NUMBER(20) -- ���Ǳ� �Ϸù�ȣ(fk)
--    , ab_title VARCHAR2(100) -- �亯 ����
--    , ab_content VARCHAR2(2000) -- �亯 ����
--    , ab_write_date DATE DEFAULT SYSTIMESTAMP -- �亯 �����
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

--*���� ������ ����
INSERT INTO members (mem_no, mem_name, mem_email, mem_password)
VALUES (seq_members.nextval, '������', 'abc123@naver.com', 'a1234');
INSERT INTO members (mem_no, mem_name, mem_email, mem_password)
VALUES (seq_members.nextval, '�󸶹�', 'def456@naver.com', 'b1234');
INSERT INTO members (mem_no, mem_name, mem_email, mem_password)
VALUES (seq_members.nextval, '�����', 'ghi789@naver.com', 'c1234');

INSERT INTO movies
VALUES (seq_movies.nextval, '�帣���θǽ�', '2021-11-17', '���·�, ������, �����'
        , '�θǽ�', '���ѹα�'
        , '���ϸ��� �����̾�Ƽ�� �� �۰��� ���Ȱ �����ڵ�!...'); 
INSERT INTO movies
VALUES (seq_movies.nextval, '���ͳν�', '2021-11-03', '������������, ������'
        ,'�׼�', '�̱�'
        , '���� ��Ʃ����� <���ͳν�>�� �� õ�⿡ ���� �� ����� �巯���� �ʰ� ��ƿ�...');
INSERT INTO movies
VALUES (seq_movies.nextval, '�����ڽ�', '2021-11-17', '���÷�,�ٸ��ȹ���'
        , '������', '�̱�' 
        , '�ڽŰ� ����, ���簨 ����, ��� ���� ���� ���� �ʴ� �ҳ� ������ �ڽ�����...'); 
INSERT INTO grade (grade_no, mem_no, movie_no, grade, grade_comment)
VALUES (seq_grade.nextval, 2, 3, 4.5, '�����ڽ� ��վ�䤾��');
INSERT INTO grade (grade_no, mem_no, movie_no, grade, grade_comment)
VALUES (seq_grade.nextval, 1, 1, 3.5, '�帣���θǽ� ��վ�䤾��');
INSERT INTO grade (grade_no, mem_no, movie_no, grade, grade_comment)
VALUES (seq_grade.nextval, 3, 2, 5, '���ͳν� ��վ�䤾��');

--#���ƿ� ���̺� ���̵�����
--INSERT INTO like_history VALUES (seq_like_his.nextval, 1, 1);
--INSERT INTO like_history VALUES (seq_like_his.nextval, 1, 3);
--INSERT INTO like_history VALUES (seq_like_his.nextval, 2, 2);
--INSERT INTO like_history VALUES (seq_like_his.nextval, 2, 3);
--INSERT INTO like_history VALUES (seq_like_his.nextval, 3, 3);

--���̺� ���ֹ�����
drop table answer_board;
drop table request_board;
drop table like_history;
drop table grade;
drop table movies;
drop table members;
















