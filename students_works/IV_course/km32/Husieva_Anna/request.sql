--------------------------------------------------------
--  File created - �����-������-25-2017   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table REQUEST
--------------------------------------------------------

  CREATE TABLE "TEST"."REQUEST" 
   (	"LOGIN" VARCHAR2(20 BYTE), 
	"UNIVERSITY_NAME" VARCHAR2(20 BYTE), 
	"SPEC_NAME" VARCHAR2(20 BYTE), 
	"ACCEPTED" NUMBER, 
	"CONFIRMED" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into TEST.REQUEST
SET DEFINE OFF;
Insert into TEST.REQUEST (LOGIN,UNIVERSITY_NAME,SPEC_NAME,ACCEPTED,CONFIRMED) values ('User1','KPI','Filologia','1','1');
Insert into TEST.REQUEST (LOGIN,UNIVERSITY_NAME,SPEC_NAME,ACCEPTED,CONFIRMED) values ('den','NUHTA','pivovarenie','1','1');
Insert into TEST.REQUEST (LOGIN,UNIVERSITY_NAME,SPEC_NAME,ACCEPTED,CONFIRMED) values ('User','National SH','hhhh','0','0');
--------------------------------------------------------
--  Ref Constraints for Table REQUEST
--------------------------------------------------------

  ALTER TABLE "TEST"."REQUEST" ADD CONSTRAINT "REQUEST_ENROLLEE_FK1" FOREIGN KEY ("LOGIN")
	  REFERENCES "TEST"."ENROLLEE" ("LOGIN") ON DELETE CASCADE ENABLE;
 
  ALTER TABLE "TEST"."REQUEST" ADD CONSTRAINT "REQUEST_UNIVERSITY_FK1" FOREIGN KEY ("UNIVERSITY_NAME", "SPEC_NAME")
	  REFERENCES "TEST"."UNIVERSITY" ("UNIVERSITY_NAME", "SPEC_NAME") ON DELETE CASCADE ENABLE;