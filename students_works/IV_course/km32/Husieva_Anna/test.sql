--------------------------------------------------------
--  File created - среда-январь-25-2017   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table TEST
--------------------------------------------------------

  CREATE TABLE "TEST"."TEST" 
   (	"LOGIN" VARCHAR2(20 BYTE), 
	"SUBJECT_NAME" VARCHAR2(20 BYTE), 
	"MARK" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into TEST.TEST
SET DEFINE OFF;
Insert into TEST.TEST (LOGIN,SUBJECT_NAME,MARK) values ('den','English','168');
Insert into TEST.TEST (LOGIN,SUBJECT_NAME,MARK) values ('User1','Math','200');
Insert into TEST.TEST (LOGIN,SUBJECT_NAME,MARK) values ('User1','Physics','100');
Insert into TEST.TEST (LOGIN,SUBJECT_NAME,MARK) values ('User1','Chemistry','200');
Insert into TEST.TEST (LOGIN,SUBJECT_NAME,MARK) values ('User2','English','100');
Insert into TEST.TEST (LOGIN,SUBJECT_NAME,MARK) values ('User2','Physics','100');
Insert into TEST.TEST (LOGIN,SUBJECT_NAME,MARK) values ('den','Chemistry','101');
Insert into TEST.TEST (LOGIN,SUBJECT_NAME,MARK) values ('User','English','200');
Insert into TEST.TEST (LOGIN,SUBJECT_NAME,MARK) values ('User1','Ukrainian','200');
Insert into TEST.TEST (LOGIN,SUBJECT_NAME,MARK) values ('den','Math','199');
Insert into TEST.TEST (LOGIN,SUBJECT_NAME,MARK) values ('User4','Physics','188');
Insert into TEST.TEST (LOGIN,SUBJECT_NAME,MARK) values ('User2','Math','200');
Insert into TEST.TEST (LOGIN,SUBJECT_NAME,MARK) values ('User','Math','200');
Insert into TEST.TEST (LOGIN,SUBJECT_NAME,MARK) values ('User','Physics','200');
Insert into TEST.TEST (LOGIN,SUBJECT_NAME,MARK) values ('User4','English','150');
Insert into TEST.TEST (LOGIN,SUBJECT_NAME,MARK) values ('User4','Math','123');
Insert into TEST.TEST (LOGIN,SUBJECT_NAME,MARK) values ('User','Ukrainian','102');
Insert into TEST.TEST (LOGIN,SUBJECT_NAME,MARK) values ('User1','English','200');
Insert into TEST.TEST (LOGIN,SUBJECT_NAME,MARK) values ('User','Chemistry','100');
--------------------------------------------------------
--  DDL for Index TEST_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEST"."TEST_PK" ON "TEST"."TEST" ("LOGIN", "SUBJECT_NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table TEST
--------------------------------------------------------

  ALTER TABLE "TEST"."TEST" MODIFY ("LOGIN" NOT NULL ENABLE);
 
  ALTER TABLE "TEST"."TEST" MODIFY ("SUBJECT_NAME" NOT NULL ENABLE);
 
  ALTER TABLE "TEST"."TEST" ADD CONSTRAINT "TEST_PK" PRIMARY KEY ("LOGIN", "SUBJECT_NAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TEST
--------------------------------------------------------

  ALTER TABLE "TEST"."TEST" ADD CONSTRAINT "TEST_ENROLLEE_FK1" FOREIGN KEY ("LOGIN")
	  REFERENCES "TEST"."ENROLLEE" ("LOGIN") ON DELETE CASCADE ENABLE;
 
  ALTER TABLE "TEST"."TEST" ADD CONSTRAINT "TEST_SUBJECT_FK1" FOREIGN KEY ("SUBJECT_NAME")
	  REFERENCES "TEST"."SUBJECT" ("SUBJECT_NAME") ON DELETE CASCADE ENABLE;
