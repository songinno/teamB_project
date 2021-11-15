--DDL TABLE "member"
CREATE TABLE "member" (
    mem_num NUMBER(20,0)
    , mem_name VARCHAR2(20 BYTE)
    , mem_email VARCHAR2(50 BYTE)
    , mem_password VARCHAR2 (30 BYTE)
);

CREATE SEQUENCE seq_mem;
--DROP SEQUENCE seq_mem;

ALTER TABLE "member" ADD CONSTRAINT pk_member PRIMARY KEY (mem_num);

SELECT * FROM "member";

commit;

--DROP TABLE "member";

