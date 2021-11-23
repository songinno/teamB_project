------ #DDL) TABLE Members------
--ȸ������ ���̺�
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

--*���� ������ ����
INSERT INTO members (mem_no, mem_name, mem_email, mem_password, auth)
VALUES (0, '������','admin@moviepedia.com', 'm1234', 'ADMIN'); --�����ڰ���


select * from members;
drop table members;
COMMIT;


------ #DDL) TABLE Movies------
--���� �� ��ȭ���� ���̺�

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
    movie_bg_img VARCHAR2(4000), -- ��ȭ ��� �̹��� �߰�
    reg_date DATE DEFAULT SYSDATE, --������ ����� �÷� �߰�
    update_date DATE,
    CONSTRAINT pk_movie_no PRIMARY KEY (movie_no)
);


---- ��ȭ ��� �̹��� �߰� (���̺� ���� �ȸ������ �̰ɷ� �߰�)
--ALTER TABLE movies ADD movie_bg_img VARCHAR2(4000);

INSERT into movies
(movie_no, movie_title, movie_op_day, movie_director, movie_actor, movie_genre, movie_country, movie_story, movie_img, movie_bg_img)
values 
(SEQ_MOVIE.nextval, '�帣�� �θǽ�', '2021-11-17', '������', '���·�, ������, ������, �����, ������, ������', '�ڹ̵� / ���', '�ѱ�',
'���ϸ��� �����̾�Ƽ�� �� �۰��� ���Ȱ �����ڵ�! ������ ��ȥ�κ� ������� ���Ŀ�� �ְ����� �������� �˽��޽� �̿����� ������� ���� �θǽ��� ���� �̵��� ���Ȱ�� ��������!',
'https://an2-img.amz.wtchn.net/image/v2/ff693f2671c804e7e54fb0c47fc07073.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPamN3TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpNMU9ERTJOVFl6TlRVNE5ETTVNRFl3SWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqbzBPVEI5Lm5wRGxvcHl1OTZvektROEU0ZUhuZW9QcGNsM3A5d2lIOTAzLTE5YVJhSVU'
, 'https://an2-img.amz.wtchn.net/image/v2/d547faa1193a10d07f4bbbd419789edf.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPamN5TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpNMU1qSTJPVGt6TWpRek9UQTFPREl5SWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqb3hNamd3ZlEuRHE0UHdqdVNNbXZCZHYyU293YVVJb3VGY1ZhZ3Q5LVR1X0FVanpBSk55WQ');

INSERT into movies
(movie_no, movie_title, movie_op_day, movie_director, movie_actor, movie_genre, movie_country, movie_story, movie_img, movie_bg_img)
values 
(SEQ_MOVIE.nextval, '��', '2021-10-20', '��� ������', 'Ƽ��� �����, ����ī �۰Ž�, ����ī ���̻�, �����̾�, ���� ��Ѹ�', '���� / ��� / SF','�̱�, ĳ����',
'10191��, ��Ʈ���̵��� ������ �İ����� ��(Ƽ��� �����)�� �ð��� �ʿ��� �������� �� ���ָ� ������ ������ ���� ����� Ÿ����. �׸��� � ���ó�� ���� �޿��� �ƶ�Ű�� �༺�� �ִ� �� ������ ������. �𷡾���� ���ϴ� "��"�̶� �Ҹ��� �ƶ�Ű���� �� �� ��� ���� �縷������ ���ֿ��� ���� ��� ������ �ż��� ȯ���� �����̽��� ������ �������� �̸� �����ϱ� ���� ������ ġ���ϴ�. Ȳ���� ������� ���� ��Ʈ���̵��� ������ ������ ��ٸ��� �ƶ�Ű���� ���ϴµ��� ������ �ڴ� �θ��� �����Ѵ�, �η��� �¼���, �̰��� ������ �����̴�!',
'https://an2-img.amz.wtchn.net/image/v2/63456fa9804b8ba4729c5e61e4d540cb.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPamN3TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpNeU56a3hPREk1TXpBeE16VTRNalE1SWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqbzBPVEI5Lkpxci1MZWF1Nmx3YTZLNVM4V2RUWkRhdDhqanNQWkUzQkloWXpaSnkyREU'
, 'https://an2-img.amz.wtchn.net/image/v2/4123fd0faaaa1b6ba203292a557e16a4.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPamN5TUN3aWNHRjBhQ0k2SWk5Mk1TOXROR2cyWTNCNGQyUjBjbXgzZVdFeGVuVmxaU0lzSW5GMVlXeHBkSGtpT2pnd0xDSjNhV1IwYUNJNk1USTRNSDAuM3JDMFF4YWxPbTZIa0lXT3NVNFVIMXh2YURpckVPdTZCZnlFbXlYN3Y3Yw');

INSERT into movies
(movie_no, movie_title, movie_op_day, movie_director, movie_actor, movie_genre, movie_country, movie_story, movie_img, movie_bg_img)
values 
(SEQ_MOVIE.nextval, '���ͳν�', '2021-11-03', 'Ŭ���� �ڿ�', 
'���� ��, ��ó�� �ŵ�, �������� ����, ���� �����ƴ�, ���� ����, ������, ����̾� Ÿ�̸� �, �η� �������, �踮 Ű����, ���� ���̿�', '��Ÿ�� / �׼� / ����', '�̱�',
'���� ��Ʃ����� <���ͳν�>�� �� õ�⿡ ���� �� ����� �巯���� �ʰ� ��ƿ� �Ҹ��� ����ε��� <�����: �������> ���� �η��� ���� ������ �� ��������� �¼��� ���� �ٽ� ���� ��ġ�鼭 �������� �̾߱�',
'https://an2-img.amz.wtchn.net/image/v2/ab7acc4092fb3aefd19631b0de56d922.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPalF3TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpNMU56TTFORE0xTnpreE16UXdNems0SWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqb3lPREI5LjlkQUlCTy00eDltT1Jxc0ZzVGVkNFI1MENJdmRNMzdUckRpNDZvTzBiV0U', 'https://an2-img.amz.wtchn.net/image/v2/2a2c878706c0e72a7a01c72fe15b34ce.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPamN5TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpNeE5qRTJOVGs0TkRnNE56Y3lNVFkySWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqb3hNamd3ZlEucHRiQmo1aG5wZUtzY1NyRWhoWU9ncFV5RmVEb0FFMnVTZG5rUl9IU0U1MA');

INSERT into movies
(movie_no, movie_title, movie_op_day, movie_director, movie_actor, movie_genre, movie_country, movie_story, movie_img, movie_bg_img)
values 
(SEQ_MOVIE.nextval, '��ĭ��: ������ ����', '2021-11-24', '�ڷ��� �ν�, ���̷� �Ͽ���, ä���� ī��Ʈ�� ���̽�', 
'�����Ĵ� ����Ʈ����, �� �����ڸ�, ������ ���Ǹ��� ���׷�, ���̾� �Է���, ���� �縮��, ����ī ��ο�, ���� �����, ���� �ߴ���, ĳ�Ѹ��� ����ź, ����� ī��ƿ��', '�ִϸ��̼� / ���� / �ڹ̵�', '�̱�',
'�ݷҺ���� ���� �� ��, ���� ������ Ȱ���� �ŷ��� ��ġ�� ���� ����ĭ�䡯. �� ������ Ư���� �ɷ��� ���� ���帮�� �йи��� ��� �ִ�. ����ĭ�䡯�� ���� ���п� ������ ��, ġ���ϴ� �� �� ������ Ư���� �ɷ��� ������ �¾ ���帮�� �йи�. ������ ���̶󺧡��� ���� �� �����ϰ� �ƹ��� �ɷ��� ����. ��� ��, ����ĭ�䡯�� �ѷ��� ������ ���� ���迡 ó���� ���̶󺧡��� �����ϰ� ����� �ڽ��� Ư���� �� ������ ������ ������� �𸥴ٰ� �����ϴµ�.. ����� ���̶󺧡��� ���� ������ ���� �� ������? �� ���� �����鿡�� ������ ������ ������ ������ ���� ���� ��ȭ! ������� ������ �� �� �� ���۵ȴ�',
'https://an2-img.amz.wtchn.net/image/v2/309238c68bd0c8c0cd14ef5719ba6402.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPalF3TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpNMU9ETTBOVEk0TnpRMU1qTTNOalE1SWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqb3lPREI5LjFhYktZMzE1M0pmWVdPeVFzck9FWGNzVjB1dDFkdTdfeFM5XzJCaWwtbnc', 'https://an2-img.amz.wtchn.net/image/v2/4448f318aa1e096775730cd3730ec6bf.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPamN5TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpJMU9EUTFNRGMzTXpjMU1EQXpPRFF3SWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqb3hNamd3ZlEuOXdEWE9GYjBNTUVZYmEzRDJ5aWt4MDMydl9MZE5LV3l0MElrTTVXbzhzOA');

INSERT into movies
(movie_no, movie_title, movie_op_day, movie_director, movie_actor, movie_genre, movie_country, movie_story, movie_img, movie_bg_img)
values 
(SEQ_MOVIE.nextval, '��ü��Ż��', '2021-11-24', '�����', 
'�����, �ڿ��, ������, ����ȯ, ���¸�, �̼���, �����, ������', '�̽��͸� / ��Ÿ�� / �׼�', '�ѱ�',
'������ ��¥ ������ �𸣰ھ�䡱 ������ ���忡�� ���� �� �� ����. �ſ￡ ��ģ ���� �󱼰� �̸�, �ڽ��� �������� ����� ���� �ʴ´�. ���� �ٲ����. ������ �ٲ���� �㿡�� �ǡ� ��� ��, �� �ٸ� ����� ������ ��� ����. �״� 12�ð����� ���� �ٲ�ٴ� ����� ���ݰ� �ǰ�, �ڽ��� �ѷ��� ����� ������ ������� ã�� �����Ѵ�. �װ� 12�ð����� ���� �ٲ���� �����, ���� ������ ��Ÿ���� �ǹ��� ���ڱ���, �׸���, �̵��� �Ѱ� �ִ� ����������� �����̾ȡ�. ������ �˰� �ƾ�. ���� �� �ؾ� �Ǵ����� ��ΰ� ������ �Ǿ� �Ѱ� �ִ� �����̾ȡ��� �ٷ� �ڽ����� ������ ����, �ڽ��� ã�� ���� ������ �����ϴµ��� ��¥ ���� ã�� ���� ������ �׼��� ���۵ȴ�!',
'https://an2-img.amz.wtchn.net/image/v2/aed6ed77f093980ebfba50d7ee1bcbba.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPalF3TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpNMU9USTBNalV3T1Rjek5qVTFPREV3SWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqb3lPREI5LkxPT1UxbkVXcjdnbmdkV2NhVS1XdXA2RUNmc0twNjVrZU1YWUVqTUtobmM', 'https://an2-img.amz.wtchn.net/image/v2/dd07b237696f565f989a0429d65cd0b1.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPamN5TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpNMU9ERTFOVFUzTVRFeU9EYzJPREV3SWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqb3hNamd3ZlEuYTVDSFNEYWpmWHJqMU94WXpFWWszdlZVUkNha3BrMjN5YS1uclZoMWk2TQ');

INSERT into movies
(movie_no, movie_title, movie_op_day, movie_director, movie_actor, movie_genre, movie_country, movie_story, movie_img, movie_bg_img)
values 
(SEQ_MOVIE.nextval, '�帣�� �θǽ�', '2021-11-17', '������', '���·�, ������, ������, �����, ������, ������', '�ڹ̵� / ���', '�ѱ�',
'���ϸ��� �����̾�Ƽ�� �� �۰��� ���Ȱ �����ڵ�! ������ ��ȥ�κ� ������� ���Ŀ�� �ְ����� �������� �˽��޽� �̿����� ������� ���� �θǽ��� ���� �̵��� ���Ȱ�� ��������!',
'https://an2-img.amz.wtchn.net/image/v2/ff693f2671c804e7e54fb0c47fc07073.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPamN3TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpNMU9ERTJOVFl6TlRVNE5ETTVNRFl3SWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqbzBPVEI5Lm5wRGxvcHl1OTZvektROEU0ZUhuZW9QcGNsM3A5d2lIOTAzLTE5YVJhSVU'
, 'https://an2-img.amz.wtchn.net/image/v2/d547faa1193a10d07f4bbbd419789edf.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPamN5TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpNMU1qSTJPVGt6TWpRek9UQTFPREl5SWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqb3hNamd3ZlEuRHE0UHdqdVNNbXZCZHYyU293YVVJb3VGY1ZhZ3Q5LVR1X0FVanpBSk55WQ');

select * from movies;
drop table movies;

commit;



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
DROP SEQUENCE seq_grade;

SELECT * FROM grade;
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




--#grade ���̺� ���̵�����        
--INSERT INTO grade (grade_no, mem_no, movie_no, grade, grade_comment)
--VALUES (seq_grade.nextval, 2, 3, 4.5, '�����ڽ� ��վ�䤾��');
--INSERT INTO grade (grade_no, mem_no, movie_no, grade, grade_comment)
--VALUES (seq_grade.nextval, 1, 1, 3.5, '�帣���θǽ� ��վ�䤾��');
--INSERT INTO grade (grade_no, mem_no, movie_no, grade, grade_comment)
--VALUES (seq_grade.nextval, 3, 2, 5, '���ͳν� ��վ�䤾��');



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
















