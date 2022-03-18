--------------------------------------------------------
--  파일이 생성됨 - 일요일-3월-13-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence BOARD_NO
--------------------------------------------------------

   CREATE SEQUENCE  "SCOTT"."BOARD_NO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence BOARD_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SCOTT"."BOARD_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence LOG_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SCOTT"."LOG_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQUENCE1
--------------------------------------------------------

   CREATE SEQUENCE  "SCOTT"."SEQUENCE1"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table ASK
--------------------------------------------------------

  CREATE TABLE "SCOTT"."ASK" 
   (	"A_TITLE" CLOB, 
	"A_CONTENT" CLOB
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" 
 LOB ("A_TITLE") STORE AS BASICFILE (
  TABLESPACE "SYSTEM" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) 
 LOB ("A_CONTENT") STORE AS BASICFILE (
  TABLESPACE "SYSTEM" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table ASK_ANSWER
--------------------------------------------------------

  CREATE TABLE "SCOTT"."ASK_ANSWER" 
   (	"ID" VARCHAR2(20 BYTE), 
	"A_COMMENT" CLOB
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" 
 LOB ("A_COMMENT") STORE AS BASICFILE (
  TABLESPACE "SYSTEM" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table BOARD
--------------------------------------------------------

  CREATE TABLE "SCOTT"."BOARD" 
   (	"ID" VARCHAR2(30 BYTE), 
	"B_NO" NUMBER(*,0), 
	"B_LIKE" NUMBER(*,0), 
	"B_DATE" DATE, 
	"B_TITLE" VARCHAR2(500 BYTE), 
	"B_VIEW" VARCHAR2(30 BYTE), 
	"B_IMG" BLOB, 
	"B_CONTENT" CLOB
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" 
 LOB ("B_IMG") STORE AS BASICFILE (
  TABLESPACE "SYSTEM" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) 
 LOB ("B_CONTENT") STORE AS BASICFILE (
  TABLESPACE "SYSTEM" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table COMPANY
--------------------------------------------------------

  CREATE TABLE "SCOTT"."COMPANY" 
   (	"C_NO" NUMBER(*,0), 
	"C_NAME" VARCHAR2(30 BYTE), 
	"C_LINK" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table EVENT
--------------------------------------------------------

  CREATE TABLE "SCOTT"."EVENT" 
   (	"ID" VARCHAR2(30 BYTE), 
	"STICKER" VARCHAR2(50 BYTE), 
	"PRICE" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table FOLLOW
--------------------------------------------------------

  CREATE TABLE "SCOTT"."FOLLOW" 
   (	"ID" VARCHAR2(30 BYTE), 
	"F_ID" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "SCOTT"."MEMBER" 
   (	"ID" VARCHAR2(30 BYTE), 
	"PASSWD" VARCHAR2(50 BYTE), 
	"EMAIL" VARCHAR2(80 BYTE), 
	"BIRTH" NUMBER(*,0), 
	"LVL" NUMBER(*,0), 
	"NAME" VARCHAR2(50 BYTE), 
	"PHONE" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table MESSAGE
--------------------------------------------------------

  CREATE TABLE "SCOTT"."MESSAGE" 
   (	"M_NO" VARCHAR2(50 BYTE), 
	"RV_ID" VARCHAR2(50 BYTE), 
	"SEND_ID" VARCHAR2(50 BYTE), 
	"M_CONTENT" VARCHAR2(500 BYTE), 
	"M_DATE" DATE, 
	"M_IMG" BLOB
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" 
 LOB ("M_IMG") STORE AS BASICFILE (
  TABLESPACE "SYSTEM" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table RECOMMENT
--------------------------------------------------------

  CREATE TABLE "SCOTT"."RECOMMENT" 
   (	"RE_NO" NUMBER(*,0), 
	"REC_CONTENT" VARCHAR2(500 BYTE), 
	"REC_RECOMMEND" NUMBER(*,0), 
	"REC_DATE" DATE, 
	"REC_STATUS" CHAR(1 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table REPORT
--------------------------------------------------------

  CREATE TABLE "SCOTT"."REPORT" 
   (	"ID" VARCHAR2(30 BYTE), 
	"R_REASON" VARCHAR2(50 BYTE), 
	"R_CONTENT" VARCHAR2(500 BYTE), 
	"R_DATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table REQUEST
--------------------------------------------------------

  CREATE TABLE "SCOTT"."REQUEST" 
   (	"ID" VARCHAR2(30 BYTE), 
	"RE_NO" NUMBER(*,0), 
	"RE_CONTENT" VARCHAR2(500 BYTE), 
	"RE_DATE" DATE, 
	"RE_STATUS" CHAR(1 BYTE), 
	"RE_TITLE" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TIP
--------------------------------------------------------

  CREATE TABLE "SCOTT"."TIP" 
   (	"T_ID" VARCHAR2(50 BYTE), 
	"T_NO" VARCHAR2(20 BYTE), 
	"T_TITLE" CLOB, 
	"T_CONTENT" CLOB, 
	"T_COMMENT" CLOB
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" 
 LOB ("T_TITLE") STORE AS BASICFILE (
  TABLESPACE "SYSTEM" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) 
 LOB ("T_CONTENT") STORE AS BASICFILE (
  TABLESPACE "SYSTEM" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) 
 LOB ("T_COMMENT") STORE AS BASICFILE (
  TABLESPACE "SYSTEM" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for View ALERT_STUDENT
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SCOTT"."ALERT_STUDENT" ("RANK", "STUDENT_NO", "NAME", "MAJOR_NAME", "SCORE") AS 
  select "RANK","STUDENT_NO","NAME","MAJOR_NAME","SCORE" from 
 (select rank() over(order by score asc) as rank, s.student_no, s.name, m.major_name,s.score
 from student s, major m where s.major_no = m.major_no)
 where rank <= 10
;
--------------------------------------------------------
--  DDL for View BIKE_RIDER
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SCOTT"."BIKE_RIDER" ("RIDERNO", "RIDERNAME", "RIDERTEL", "VEHICLE") AS 
  select "RIDERNO","RIDERNAME","RIDERTEL","VEHICLE" 
from rider
where VEHICLE LIKE 'B'
;
--------------------------------------------------------
--  DDL for View BIKE_RIDER_INFO
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SCOTT"."BIKE_RIDER_INFO" ("RIDERNO", "RIDERNAME", "NAME", "RIDERTEL") AS 
  select r.riderno, r.ridername, v.name, r.ridertel
from rider r, vehicle v
where r.vehicle = v.code and r.vehicle = 'B'
;
--------------------------------------------------------
--  DDL for View DISPATCHING_INFO
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SCOTT"."DISPATCHING_INFO" ("ENO", "NAME", "POSITION_NAME", "DEPARTMENT_NAME", "S_DATE") AS 
  select e.eno, e.name, p.position_name, d.department_name, di.s_date
from employee e, position p, department d, dispatched di
where
e.eno = di.eno and p.position_no = e.positionno and e.departmentno = d.department_no
and di.e_date is null
;
--------------------------------------------------------
--  DDL for View EMPLOYEE_VIEW
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SCOTT"."EMPLOYEE_VIEW" ("ENO", "NAME", "POSITION", "DEPARTMENT_NAME", "MONEY") AS 
  select e.eno , e.name, p.position_name as position, d.department_name, s.money
from employee e, department d, position p, salary s
where e.eno = s.eno
and e.departmentno = d.department_no
and p.position_no = e.positionno
;
REM INSERTING into SCOTT.ASK_ANSWER
SET DEFINE OFF;
REM INSERTING into SCOTT.BOARD
SET DEFINE OFF;
Insert into SCOTT.BOARD (ID,B_NO,B_LIKE,B_DATE,B_TITLE,B_VIEW) values ('1',1,null,null,'📣📣고집 이용약관📣📣
','1');
Insert into SCOTT.BOARD (ID,B_NO,B_LIKE,B_DATE,B_TITLE,B_VIEW) values ('1',2,null,null,'📣📣게시물 운영정책-1 (개요)📣📣
','1');
Insert into SCOTT.BOARD (ID,B_NO,B_LIKE,B_DATE,B_TITLE,B_VIEW) values ('1',3,null,null,'📣📣게시물 운영정책-2 (다른 이용자의 존중)📣📣
','1');
Insert into SCOTT.BOARD (ID,B_NO,B_LIKE,B_DATE,B_TITLE,B_VIEW) values ('1',4,null,null,'📣📣게시물 운영정책-3 (아동과 청소년의 특별한 보호)📣📣
','1');
Insert into SCOTT.BOARD (ID,B_NO,B_LIKE,B_DATE,B_TITLE,B_VIEW) values ('1',5,null,null,'📣📣게시물 운영정책-4 (서비스의 신뢰성 및 안전성 확보)📣📣
','1');
Insert into SCOTT.BOARD (ID,B_NO,B_LIKE,B_DATE,B_TITLE,B_VIEW) values ('noeyes',6,1,to_date('22/03/13','RR/MM/DD'),'기발한 아이디어에 감성까지! 내돈내산 다이소 추천템6','102');
Insert into SCOTT.BOARD (ID,B_NO,B_LIKE,B_DATE,B_TITLE,B_VIEW) values ('Amanda',7,1,to_date('22/03/13','RR/MM/DD'),null,'1');
Insert into SCOTT.BOARD (ID,B_NO,B_LIKE,B_DATE,B_TITLE,B_VIEW) values ('Alice',8,1,to_date('22/03/12','RR/MM/DD'),null,'1');
Insert into SCOTT.BOARD (ID,B_NO,B_LIKE,B_DATE,B_TITLE,B_VIEW) values ('Andra ',9,1,to_date('22/03/11','RR/MM/DD'),null,'1');
Insert into SCOTT.BOARD (ID,B_NO,B_LIKE,B_DATE,B_TITLE,B_VIEW) values ('Bunny ',10,1,to_date('22/03/13','RR/MM/DD'),null,'1');
REM INSERTING into SCOTT.COMPANY
SET DEFINE OFF;
Insert into SCOTT.COMPANY (C_NO,C_NAME,C_LINK) values (1,'Gabtune','https://sina.com.cn');
Insert into SCOTT.COMPANY (C_NO,C_NAME,C_LINK) values (2,'Skajo','https://sitemeter.com');
Insert into SCOTT.COMPANY (C_NO,C_NAME,C_LINK) values (3,'Tekfly','https://mapquest.com');
Insert into SCOTT.COMPANY (C_NO,C_NAME,C_LINK) values (4,'Mudo','https://behance.net');
Insert into SCOTT.COMPANY (C_NO,C_NAME,C_LINK) values (5,'Zoomlounge','http://yahoo.com');
Insert into SCOTT.COMPANY (C_NO,C_NAME,C_LINK) values (6,'Skipfire','http://altervista.org');
Insert into SCOTT.COMPANY (C_NO,C_NAME,C_LINK) values (7,'Plajo','https://army.mil');
Insert into SCOTT.COMPANY (C_NO,C_NAME,C_LINK) values (8,'Cogibox','https://squidoo.com');
Insert into SCOTT.COMPANY (C_NO,C_NAME,C_LINK) values (9,'Roombo','http://hp.com');
Insert into SCOTT.COMPANY (C_NO,C_NAME,C_LINK) values (10,'Riffpath','https://msn.com');
REM INSERTING into SCOTT.EVENT
SET DEFINE OFF;
Insert into SCOTT.EVENT (ID,STICKER,PRICE) values ('QKME39','10',5769);
Insert into SCOTT.EVENT (ID,STICKER,PRICE) values ('ARJC89','4',1752);
Insert into SCOTT.EVENT (ID,STICKER,PRICE) values ('SSOQ27','2',6354);
Insert into SCOTT.EVENT (ID,STICKER,PRICE) values ('NAAK78','7',1807);
Insert into SCOTT.EVENT (ID,STICKER,PRICE) values ('MQRU82','7',1847);
Insert into SCOTT.EVENT (ID,STICKER,PRICE) values ('RJPK84','8',7498);
Insert into SCOTT.EVENT (ID,STICKER,PRICE) values ('NJBJ16','4',5100);
Insert into SCOTT.EVENT (ID,STICKER,PRICE) values ('HDYL11','6',8395);
Insert into SCOTT.EVENT (ID,STICKER,PRICE) values ('LXJE78','10',5000);
Insert into SCOTT.EVENT (ID,STICKER,PRICE) values ('NABQ33','6',4536);
REM INSERTING into SCOTT.FOLLOW
SET DEFINE OFF;
Insert into SCOTT.FOLLOW (ID,F_ID) values ('QKME39','NABQ33');
Insert into SCOTT.FOLLOW (ID,F_ID) values ('ARJC89','LXJE78');
Insert into SCOTT.FOLLOW (ID,F_ID) values ('SSOQ27','HDYL11');
Insert into SCOTT.FOLLOW (ID,F_ID) values ('NAAK78','NJBJ16');
Insert into SCOTT.FOLLOW (ID,F_ID) values ('MQRU82','RJPK84');
Insert into SCOTT.FOLLOW (ID,F_ID) values ('RJPK84','MQRU82');
Insert into SCOTT.FOLLOW (ID,F_ID) values ('NJBJ16','NAAK78');
Insert into SCOTT.FOLLOW (ID,F_ID) values ('HDYL11','SSOQ27');
Insert into SCOTT.FOLLOW (ID,F_ID) values ('LXJE78','ARJC89');
Insert into SCOTT.FOLLOW (ID,F_ID) values ('NABQ33','QKME39');
REM INSERTING into SCOTT.MEMBER
SET DEFINE OFF;
Insert into SCOTT.MEMBER (ID,PASSWD,EMAIL,BIRTH,LVL,NAME,PHONE) values ('1','1','wvobes0@zimbio.com',20000000,9,'홍길동','01084773383
');
Insert into SCOTT.MEMBER (ID,PASSWD,EMAIL,BIRTH,LVL,NAME,PHONE) values ('ARJC89','GYRW272EL92','muttley1@springer.com',20000000,2,'홍길동',null);
Insert into SCOTT.MEMBER (ID,PASSWD,EMAIL,BIRTH,LVL,NAME,PHONE) values ('SSOQ27','YQOS437ZR77','vbalderston2@paypal.com',20000000,8,'홍길동',null);
Insert into SCOTT.MEMBER (ID,PASSWD,EMAIL,BIRTH,LVL,NAME,PHONE) values ('NAAK78','MEBR308BY48','smeier3@joomla.org',20000000,4,'홍길동',null);
Insert into SCOTT.MEMBER (ID,PASSWD,EMAIL,BIRTH,LVL,NAME,PHONE) values ('MQRU82','OTBO593ZZ96','lbollands4@discuz.net',20000000,7,'홍길동',null);
Insert into SCOTT.MEMBER (ID,PASSWD,EMAIL,BIRTH,LVL,NAME,PHONE) values ('RJPK84','CKLJ438XB22','llagde5@simplemachines.org',20000000,7,'홍길동',null);
Insert into SCOTT.MEMBER (ID,PASSWD,EMAIL,BIRTH,LVL,NAME,PHONE) values ('NJBJ16','IUFP764MU24','kdongate6@berkeley.edu',20000000,3,'홍길동',null);
Insert into SCOTT.MEMBER (ID,PASSWD,EMAIL,BIRTH,LVL,NAME,PHONE) values ('HDYL11','VOYH286LO24','lkennefick7@loc.gov',20000000,8,'홍길동',null);
Insert into SCOTT.MEMBER (ID,PASSWD,EMAIL,BIRTH,LVL,NAME,PHONE) values ('LXJE78','LLVG216VO32','pleys8@skype.com',20000000,3,'홍길동',null);
Insert into SCOTT.MEMBER (ID,PASSWD,EMAIL,BIRTH,LVL,NAME,PHONE) values ('NABQ33','REJG995SD66','dfisbburne9@harvard.edu',20000000,1,'홍길동','01084773383');
Insert into SCOTT.MEMBER (ID,PASSWD,EMAIL,BIRTH,LVL,NAME,PHONE) values ('decaf2099','sungilchun','decaf2099@naver.com',19930809,9,'천성일','01048957444');
REM INSERTING into SCOTT.MESSAGE
SET DEFINE OFF;
Insert into SCOTT.MESSAGE (M_NO,RV_ID,SEND_ID,M_CONTENT,M_DATE) values ('1','ARJC89','QKME39','awdasd',null);
Insert into SCOTT.MESSAGE (M_NO,RV_ID,SEND_ID,M_CONTENT,M_DATE) values ('2','ARJC89','QKME39','qwdasdwd',null);
Insert into SCOTT.MESSAGE (M_NO,RV_ID,SEND_ID,M_CONTENT,M_DATE) values ('3','ARJC89','QKME39','qwdasdwd',null);
Insert into SCOTT.MESSAGE (M_NO,RV_ID,SEND_ID,M_CONTENT,M_DATE) values ('4','ARJC89','QKME39','qwdasdwd',null);
Insert into SCOTT.MESSAGE (M_NO,RV_ID,SEND_ID,M_CONTENT,M_DATE) values ('5','ARJC89','QKME39','qwdasdwd',null);
Insert into SCOTT.MESSAGE (M_NO,RV_ID,SEND_ID,M_CONTENT,M_DATE) values ('6','ARJC89','QKME39','qwdasdwd',null);
Insert into SCOTT.MESSAGE (M_NO,RV_ID,SEND_ID,M_CONTENT,M_DATE) values ('7','ARJC89','QKME39','qwdasdwd',null);
Insert into SCOTT.MESSAGE (M_NO,RV_ID,SEND_ID,M_CONTENT,M_DATE) values ('8','ARJC89','QKME39','qwdasdwd',null);
Insert into SCOTT.MESSAGE (M_NO,RV_ID,SEND_ID,M_CONTENT,M_DATE) values ('9','ARJC89','QKME39','qwdasdwd',null);
Insert into SCOTT.MESSAGE (M_NO,RV_ID,SEND_ID,M_CONTENT,M_DATE) values ('10','ARJC89','QKME39','qwdasdwd',null);
Insert into SCOTT.MESSAGE (M_NO,RV_ID,SEND_ID,M_CONTENT,M_DATE) values ('11','ARJC89','QKME39','asdwda',null);
Insert into SCOTT.MESSAGE (M_NO,RV_ID,SEND_ID,M_CONTENT,M_DATE) values ('12','ARJC89','QKME39','asdwda',null);
Insert into SCOTT.MESSAGE (M_NO,RV_ID,SEND_ID,M_CONTENT,M_DATE) values ('13','ARJC89','QKME39','asdwda',null);
Insert into SCOTT.MESSAGE (M_NO,RV_ID,SEND_ID,M_CONTENT,M_DATE) values ('14','ARJC89','QKME39','asdwda',null);
Insert into SCOTT.MESSAGE (M_NO,RV_ID,SEND_ID,M_CONTENT,M_DATE) values ('15','ARJC89','QKME39','asdwda',null);
Insert into SCOTT.MESSAGE (M_NO,RV_ID,SEND_ID,M_CONTENT,M_DATE) values ('16','ARJC89','QKME39','asdwda',null);
Insert into SCOTT.MESSAGE (M_NO,RV_ID,SEND_ID,M_CONTENT,M_DATE) values ('17','ARJC89','QKME39','asdwda',null);
Insert into SCOTT.MESSAGE (M_NO,RV_ID,SEND_ID,M_CONTENT,M_DATE) values ('18','ARJC89','QKME39','qwd',to_date('22/03/08','RR/MM/DD'));
Insert into SCOTT.MESSAGE (M_NO,RV_ID,SEND_ID,M_CONTENT,M_DATE) values ('19','ARJC89','QKME39','awdas',to_date('22/03/08','RR/MM/DD'));
Insert into SCOTT.MESSAGE (M_NO,RV_ID,SEND_ID,M_CONTENT,M_DATE) values ('22','ARJC89','QKME39','wdasdw',to_date('22/03/10','RR/MM/DD'));
Insert into SCOTT.MESSAGE (M_NO,RV_ID,SEND_ID,M_CONTENT,M_DATE) values ('23','ARJC89','1','12eqased',to_date('22/03/10','RR/MM/DD'));
Insert into SCOTT.MESSAGE (M_NO,RV_ID,SEND_ID,M_CONTENT,M_DATE) values ('24','ARJC89','1','12eqsada',to_date('22/03/10','RR/MM/DD'));
Insert into SCOTT.MESSAGE (M_NO,RV_ID,SEND_ID,M_CONTENT,M_DATE) values ('25','ARJC89','1','12eqwe12',to_date('22/03/10','RR/MM/DD'));
Insert into SCOTT.MESSAGE (M_NO,RV_ID,SEND_ID,M_CONTENT,M_DATE) values ('26','ARJC89','1','123asd',to_date('22/03/10','RR/MM/DD'));
Insert into SCOTT.MESSAGE (M_NO,RV_ID,SEND_ID,M_CONTENT,M_DATE) values ('27','ARJC89','1','123asd',to_date('22/03/10','RR/MM/DD'));
Insert into SCOTT.MESSAGE (M_NO,RV_ID,SEND_ID,M_CONTENT,M_DATE) values ('28','ARJC89','1','12edawd',to_date('22/03/10','RR/MM/DD'));
Insert into SCOTT.MESSAGE (M_NO,RV_ID,SEND_ID,M_CONTENT,M_DATE) values ('29','ARJC89','1','12eaws',to_date('22/03/10','RR/MM/DD'));
Insert into SCOTT.MESSAGE (M_NO,RV_ID,SEND_ID,M_CONTENT,M_DATE) values ('30','ARJC89','1','1q2edas',to_date('22/03/10','RR/MM/DD'));
REM INSERTING into SCOTT.RECOMMENT
SET DEFINE OFF;
Insert into SCOTT.RECOMMENT (RE_NO,REC_CONTENT,REC_RECOMMEND,REC_DATE,REC_STATUS) values (1,'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.',null,to_date('20/09/08','RR/MM/DD'),'0');
Insert into SCOTT.RECOMMENT (RE_NO,REC_CONTENT,REC_RECOMMEND,REC_DATE,REC_STATUS) values (2,'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.',null,to_date('21/02/24','RR/MM/DD'),'1');
Insert into SCOTT.RECOMMENT (RE_NO,REC_CONTENT,REC_RECOMMEND,REC_DATE,REC_STATUS) values (3,'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.',null,to_date('20/01/10','RR/MM/DD'),'0');
Insert into SCOTT.RECOMMENT (RE_NO,REC_CONTENT,REC_RECOMMEND,REC_DATE,REC_STATUS) values (4,'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.',null,to_date('20/07/14','RR/MM/DD'),'1');
Insert into SCOTT.RECOMMENT (RE_NO,REC_CONTENT,REC_RECOMMEND,REC_DATE,REC_STATUS) values (5,'In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.',null,to_date('22/08/21','RR/MM/DD'),'0');
Insert into SCOTT.RECOMMENT (RE_NO,REC_CONTENT,REC_RECOMMEND,REC_DATE,REC_STATUS) values (6,'In congue. Etiam justo. Etiam pretium iaculis justo.',null,to_date('20/06/05','RR/MM/DD'),'1');
Insert into SCOTT.RECOMMENT (RE_NO,REC_CONTENT,REC_RECOMMEND,REC_DATE,REC_STATUS) values (7,'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.',null,to_date('22/12/09','RR/MM/DD'),'0');
Insert into SCOTT.RECOMMENT (RE_NO,REC_CONTENT,REC_RECOMMEND,REC_DATE,REC_STATUS) values (8,'Phasellus in felis. Donec semper sapien a libero. Nam dui.',null,to_date('21/06/01','RR/MM/DD'),'1');
Insert into SCOTT.RECOMMENT (RE_NO,REC_CONTENT,REC_RECOMMEND,REC_DATE,REC_STATUS) values (9,'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.',null,to_date('20/03/21','RR/MM/DD'),'1');
Insert into SCOTT.RECOMMENT (RE_NO,REC_CONTENT,REC_RECOMMEND,REC_DATE,REC_STATUS) values (10,'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.',null,to_date('20/12/13','RR/MM/DD'),'1');
REM INSERTING into SCOTT.REPORT
SET DEFINE OFF;
Insert into SCOTT.REPORT (ID,R_REASON,R_CONTENT,R_DATE) values ('QKME39','A','Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.',to_date('20/04/24','RR/MM/DD'));
Insert into SCOTT.REPORT (ID,R_REASON,R_CONTENT,R_DATE) values ('ARJC89','B','Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.',to_date('22/05/07','RR/MM/DD'));
Insert into SCOTT.REPORT (ID,R_REASON,R_CONTENT,R_DATE) values ('SSOQ27','C','Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.',to_date('19/01/26','RR/MM/DD'));
Insert into SCOTT.REPORT (ID,R_REASON,R_CONTENT,R_DATE) values ('NAAK78','D','In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.',to_date('20/06/20','RR/MM/DD'));
Insert into SCOTT.REPORT (ID,R_REASON,R_CONTENT,R_DATE) values ('MQRU82','E','Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.',to_date('22/03/23','RR/MM/DD'));
Insert into SCOTT.REPORT (ID,R_REASON,R_CONTENT,R_DATE) values ('RJPK84','F','Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.',to_date('19/01/28','RR/MM/DD'));
Insert into SCOTT.REPORT (ID,R_REASON,R_CONTENT,R_DATE) values ('NJBJ16','A','Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.',to_date('19/11/10','RR/MM/DD'));
Insert into SCOTT.REPORT (ID,R_REASON,R_CONTENT,R_DATE) values ('HDYL11','B','Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.',to_date('19/08/09','RR/MM/DD'));
Insert into SCOTT.REPORT (ID,R_REASON,R_CONTENT,R_DATE) values ('LXJE78','C','In congue. Etiam justo. Etiam pretium iaculis justo.',to_date('19/05/05','RR/MM/DD'));
Insert into SCOTT.REPORT (ID,R_REASON,R_CONTENT,R_DATE) values ('NABQ33','D','Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.',to_date('22/12/05','RR/MM/DD'));
REM INSERTING into SCOTT.REQUEST
SET DEFINE OFF;
Insert into SCOTT.REQUEST (ID,RE_NO,RE_CONTENT,RE_DATE,RE_STATUS,RE_TITLE) values ('QKME39',1,'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.',to_date('20/04/02','RR/MM/DD'),'1','선거운동은 각급 선거...');
Insert into SCOTT.REQUEST (ID,RE_NO,RE_CONTENT,RE_DATE,RE_STATUS,RE_TITLE) values ('ARJC89',2,'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.',to_date('19/12/04','RR/MM/DD'),'0','모든 국민은 근로의 ...');
Insert into SCOTT.REQUEST (ID,RE_NO,RE_CONTENT,RE_DATE,RE_STATUS,RE_TITLE) values ('SSOQ27',3,'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.',to_date('22/03/04','RR/MM/DD'),'1','국채를 모집하거나 예...');
Insert into SCOTT.REQUEST (ID,RE_NO,RE_CONTENT,RE_DATE,RE_STATUS,RE_TITLE) values ('NAAK78',4,'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.',to_date('21/05/19','RR/MM/DD'),'0','감사원의 조직·직무...');
Insert into SCOTT.REQUEST (ID,RE_NO,RE_CONTENT,RE_DATE,RE_STATUS,RE_TITLE) values ('MQRU82',5,'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.',to_date('19/01/17','RR/MM/DD'),'0','국가는 모성의 보호를...');
Insert into SCOTT.REQUEST (ID,RE_NO,RE_CONTENT,RE_DATE,RE_STATUS,RE_TITLE) values ('RJPK84',6,'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.',to_date('20/02/25','RR/MM/DD'),'0','국가는 여자의 복지와...');
Insert into SCOTT.REQUEST (ID,RE_NO,RE_CONTENT,RE_DATE,RE_STATUS,RE_TITLE) values ('NJBJ16',7,'Phasellus in felis. Donec semper sapien a libero. Nam dui.

Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.',to_date('22/02/22','RR/MM/DD'),'0','대통령은 내란 또는 ...');
Insert into SCOTT.REQUEST (ID,RE_NO,RE_CONTENT,RE_DATE,RE_STATUS,RE_TITLE) values ('HDYL11',8,'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.',to_date('21/07/25','RR/MM/DD'),'0','대통령은 제3항과 제4...');
Insert into SCOTT.REQUEST (ID,RE_NO,RE_CONTENT,RE_DATE,RE_STATUS,RE_TITLE) values ('LXJE78',9,'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.',to_date('21/01/04','RR/MM/DD'),'0','대통령은 법률이 정하...');
Insert into SCOTT.REQUEST (ID,RE_NO,RE_CONTENT,RE_DATE,RE_STATUS,RE_TITLE) values ('NABQ33',10,'Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.',to_date('21/02/09','RR/MM/DD'),'0','모든 국민은 양심의 ...');
REM INSERTING into SCOTT.TIP
SET DEFINE OFF;
Insert into SCOTT.TIP (T_ID,T_NO) values ('드니즈','1');
Insert into SCOTT.TIP (T_ID,T_NO) values ('니니즈','2');
Insert into SCOTT.TIP (T_ID,T_NO) values ('윰니흠','3');
Insert into SCOTT.TIP (T_ID,T_NO) values ('산산무슨산','4');
Insert into SCOTT.TIP (T_ID,T_NO) values ('_빈하루','5');
Insert into SCOTT.TIP (T_ID,T_NO) values ('august.6th','6');
--------------------------------------------------------
--  DDL for Index RE_COMMENT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."RE_COMMENT_PK" ON "SCOTT"."RECOMMENT" ("RE_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index COMPANY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."COMPANY_PK" ON "SCOTT"."COMPANY" ("C_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index EVENT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."EVENT_PK" ON "SCOTT"."EVENT" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index COMMENT_PKV2
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."COMMENT_PKV2" ON "SCOTT"."REPORT" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index REQUEST_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."REQUEST_PK" ON "SCOTT"."REQUEST" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index MEMBER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."MEMBER_PK" ON "SCOTT"."MEMBER" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007157
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."SYS_C007157" ON "SCOTT"."MESSAGE" ("M_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index FOLLOW_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."FOLLOW_PK" ON "SCOTT"."FOLLOW" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Function CALC_TOTAL
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "SCOTT"."CALC_TOTAL" (
    num in number
)return number
as
    total number := 0;
    i number := 0;
begin
    loop
        total := total + i;
        i := i + 1;
        exit when i > num;
    end loop;
---------------------------------------------
    total := 0;
    i := 1;
    while(i<=num)
    loop
    total := total + i;
     i := i + 1;
    end loop;
---------------------------------------------    
    total := 0;
    for i in 1 .. num
    loop
    total := total + i;
     end loop;
---------------------------------------------
    return total;
end calc_total;


/
--------------------------------------------------------
--  DDL for Function CHECK_ODD_EVEN
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "SCOTT"."CHECK_ODD_EVEN" 
(
    num in number
)return varchar2
as
msg varchar2(100);
begin
    if mod(num,2) = 1 then
        msg := '�ش� ���ڴ� Ȧ���Դϴ�.';
    elsif num =0 then
        msg := '�ش� ���ڴ� 0�Դϴ�.';
    else
        msg := '�ش� ���ڴ� ¦���Դϴ�.';
    end if;
    return msg;
end check_odd_even;
select check_odd_even(9) from dual;

-- �Լ��� GET_SCORE_GRADE
-- �Ű����� ����
-- 4.5 -> A+
-- 4.0 ~ 4.4 -> A
-- 3.5 ~ 3.9 -> B+
-- 3.0 ~ 3.4 -> B
-- 2.5 ~ 2.9 -> C+
-- 2.0 ~ 2.4 -> C
-- 1.5 ~ 1.9 -> D+
-- 1.0 ~ 1.4 -> D
-- 0.0 ~ 0.9 -> F

CREATE OR REPLACE FUNCTION GET_SCORE_GRADE
(
score in number
) return varchar2
as grade varchar2(2);
begin
if score = 4.5 then 
        grade := 'A+';
    elsif score >=4.0 then
        grade := 'A';
    elsif score >=3.5 then
        grade := 'B+';
    elsif score >=3.0 then
        grade := 'C+';
    elsif score >=2.5 then
        grade := 'C';
    elsif score >=2.0 then
        grade := 'D+';
    elsif score >=1.5 then
        grade := 'D';
    else   
        grade := 'F';
    end if;
    return grade;
end GET_SCORE_GRADE;

select s.*, get_score_grade(s.score) from student s;


/
--------------------------------------------------------
--  DDL for Function GET_SCORE_GRADE
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "SCOTT"."GET_SCORE_GRADE" 
(
score in number
) return varchar2
as grade varchar2(2);
begin
if score = 4.5 then 
        grade := 'A+';
    elsif score >=4.0 then
        grade := 'A';
    elsif score >=3.5 then
        grade := 'B+';
    elsif score >=3.0 then
        grade := 'C+';
    elsif score >=2.5 then
        grade := 'C';
    elsif score >=2.0 then
        grade := 'D+';
    elsif score >=1.5 then
        grade := 'D';
    else   
        grade := 'F';
    end if;
    return grade;
end GET_SCORE_GRADE;


/
--------------------------------------------------------
--  Constraints for Table ASK_ANSWER
--------------------------------------------------------

  ALTER TABLE "SCOTT"."ASK_ANSWER" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table REPORT
--------------------------------------------------------

  ALTER TABLE "SCOTT"."REPORT" ADD CONSTRAINT "COMMENT_PKV2" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SCOTT"."REPORT" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table COMPANY
--------------------------------------------------------

  ALTER TABLE "SCOTT"."COMPANY" ADD CONSTRAINT "COMPANY_PK" PRIMARY KEY ("C_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SCOTT"."COMPANY" MODIFY ("C_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MESSAGE
--------------------------------------------------------

  ALTER TABLE "SCOTT"."MESSAGE" ADD PRIMARY KEY ("M_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table RECOMMENT
--------------------------------------------------------

  ALTER TABLE "SCOTT"."RECOMMENT" ADD CONSTRAINT "RE_COMMENT_PK" PRIMARY KEY ("RE_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SCOTT"."RECOMMENT" MODIFY ("RE_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "SCOTT"."MEMBER" MODIFY ("LVL" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."MEMBER" MODIFY ("BIRTH" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."MEMBER" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."MEMBER" MODIFY ("PASSWD" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."MEMBER" ADD CONSTRAINT "MEMBER_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SCOTT"."MEMBER" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BOARD
--------------------------------------------------------

  ALTER TABLE "SCOTT"."BOARD" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FOLLOW
--------------------------------------------------------

  ALTER TABLE "SCOTT"."FOLLOW" ADD CONSTRAINT "FOLLOW_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SCOTT"."FOLLOW" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table REQUEST
--------------------------------------------------------

  ALTER TABLE "SCOTT"."REQUEST" ADD CONSTRAINT "REQUEST_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SCOTT"."REQUEST" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EVENT
--------------------------------------------------------

  ALTER TABLE "SCOTT"."EVENT" ADD CONSTRAINT "EVENT_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SCOTT"."EVENT" MODIFY ("ID" NOT NULL ENABLE);
