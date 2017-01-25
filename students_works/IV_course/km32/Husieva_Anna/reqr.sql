--------------------------------------------------------
--  File created - �����-������-25-2017   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table REQUIREMENT
--------------------------------------------------------

  CREATE TABLE "TEST"."REQUIREMENT" 
   (	"SUBJECT_NAME" VARCHAR2(20 BYTE), 
	"UNIVERSITY_NAME" VARCHAR2(20 BYTE), 
	"SPEC_NAME" VARCHAR2(20 BYTE), 
	"MIN_QUANT_MARK" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into TEST.REQUIREMENT
SET DEFINE OFF;
Insert into TEST.REQUIREMENT (SUBJECT_NAME,UNIVERSITY_NAME,SPEC_NAME,MIN_QUANT_MARK) values ('English','KPI','AppMath','110');
Insert into TEST.REQUIREMENT (SUBJECT_NAME,UNIVERSITY_NAME,SPEC_NAME,MIN_QUANT_MARK) values ('Math','KPI','AppMath','111');
Insert into TEST.REQUIREMENT (SUBJECT_NAME,UNIVERSITY_NAME,SPEC_NAME,MIN_QUANT_MARK) values ('Physics','KPI','AppMath','110');
Insert into TEST.REQUIREMENT (SUBJECT_NAME,UNIVERSITY_NAME,SPEC_NAME,MIN_QUANT_MARK) values ('Chemistry','National SH','hhhh','100');
Insert into TEST.REQUIREMENT (SUBJECT_NAME,UNIVERSITY_NAME,SPEC_NAME,MIN_QUANT_MARK) values ('Ukrainian','National SH','hhhh','100');
Insert into TEST.REQUIREMENT (SUBJECT_NAME,UNIVERSITY_NAME,SPEC_NAME,MIN_QUANT_MARK) values ('English','National SH','hhhh','100');
Insert into TEST.REQUIREMENT (SUBJECT_NAME,UNIVERSITY_NAME,SPEC_NAME,MIN_QUANT_MARK) values ('Chemistry','KPI','sdjkf545','100');
Insert into TEST.REQUIREMENT (SUBJECT_NAME,UNIVERSITY_NAME,SPEC_NAME,MIN_QUANT_MARK) values ('English','KPI','sdjkf545','100');
Insert into TEST.REQUIREMENT (SUBJECT_NAME,UNIVERSITY_NAME,SPEC_NAME,MIN_QUANT_MARK) values ('History','KPI','sdjkf545','100');
Insert into TEST.REQUIREMENT (SUBJECT_NAME,UNIVERSITY_NAME,SPEC_NAME,MIN_QUANT_MARK) values ('English','KPI','adsa22','100');
Insert into TEST.REQUIREMENT (SUBJECT_NAME,UNIVERSITY_NAME,SPEC_NAME,MIN_QUANT_MARK) values ('Physics','KPI','adsa22','100');
Insert into TEST.REQUIREMENT (SUBJECT_NAME,UNIVERSITY_NAME,SPEC_NAME,MIN_QUANT_MARK) values ('History','KPI','adsa22','100');
Insert into TEST.REQUIREMENT (SUBJECT_NAME,UNIVERSITY_NAME,SPEC_NAME,MIN_QUANT_MARK) values ('Math','NUHTA','pivovarenie','100');
Insert into TEST.REQUIREMENT (SUBJECT_NAME,UNIVERSITY_NAME,SPEC_NAME,MIN_QUANT_MARK) values ('Chemistry','NUHTA','pivovarenie','100');
Insert into TEST.REQUIREMENT (SUBJECT_NAME,UNIVERSITY_NAME,SPEC_NAME,MIN_QUANT_MARK) values ('English','NUHTA','pivovarenie','100');
Insert into TEST.REQUIREMENT (SUBJECT_NAME,UNIVERSITY_NAME,SPEC_NAME,MIN_QUANT_MARK) values ('Ukrainian','KPI','Filologia','104');
Insert into TEST.REQUIREMENT (SUBJECT_NAME,UNIVERSITY_NAME,SPEC_NAME,MIN_QUANT_MARK) values ('English','KPI','Filologia','105');
Insert into TEST.REQUIREMENT (SUBJECT_NAME,UNIVERSITY_NAME,SPEC_NAME,MIN_QUANT_MARK) values ('Chemistry','KPI','Filologia','104');
Insert into TEST.REQUIREMENT (SUBJECT_NAME,UNIVERSITY_NAME,SPEC_NAME,MIN_QUANT_MARK) values ('Chemistry','KPI','sd5ds4v5','100');
Insert into TEST.REQUIREMENT (SUBJECT_NAME,UNIVERSITY_NAME,SPEC_NAME,MIN_QUANT_MARK) values ('English','KPI','sd5ds4v5','100');
Insert into TEST.REQUIREMENT (SUBJECT_NAME,UNIVERSITY_NAME,SPEC_NAME,MIN_QUANT_MARK) values ('History','KPI','sd5ds4v5','100');
Insert into TEST.REQUIREMENT (SUBJECT_NAME,UNIVERSITY_NAME,SPEC_NAME,MIN_QUANT_MARK) values ('Chemistry','NAU','tfghjk','100');
Insert into TEST.REQUIREMENT (SUBJECT_NAME,UNIVERSITY_NAME,SPEC_NAME,MIN_QUANT_MARK) values ('English','NAU','tfghjk','100');
Insert into TEST.REQUIREMENT (SUBJECT_NAME,UNIVERSITY_NAME,SPEC_NAME,MIN_QUANT_MARK) values ('Math','NAU','tfghjk','100');
Insert into TEST.REQUIREMENT (SUBJECT_NAME,UNIVERSITY_NAME,SPEC_NAME,MIN_QUANT_MARK) values ('English','KPI','fghjkl','100');
Insert into TEST.REQUIREMENT (SUBJECT_NAME,UNIVERSITY_NAME,SPEC_NAME,MIN_QUANT_MARK) values ('Physics','KPI','fghjkl','100');
Insert into TEST.REQUIREMENT (SUBJECT_NAME,UNIVERSITY_NAME,SPEC_NAME,MIN_QUANT_MARK) values ('Ukrainian','KPI','fghjkl','100');
Insert into TEST.REQUIREMENT (SUBJECT_NAME,UNIVERSITY_NAME,SPEC_NAME,MIN_QUANT_MARK) values ('Chemistry','National SH','sdhjfhjs','100');
Insert into TEST.REQUIREMENT (SUBJECT_NAME,UNIVERSITY_NAME,SPEC_NAME,MIN_QUANT_MARK) values ('English','National SH','sdhjfhjs','100');
Insert into TEST.REQUIREMENT (SUBJECT_NAME,UNIVERSITY_NAME,SPEC_NAME,MIN_QUANT_MARK) values ('Math','National SH','sdhjfhjs','100');
Insert into TEST.REQUIREMENT (SUBJECT_NAME,UNIVERSITY_NAME,SPEC_NAME,MIN_QUANT_MARK) values ('English','KPI','fdvnkdf','100');
Insert into TEST.REQUIREMENT (SUBJECT_NAME,UNIVERSITY_NAME,SPEC_NAME,MIN_QUANT_MARK) values ('Chemistry','KPI','fdvnkdf','100');
Insert into TEST.REQUIREMENT (SUBJECT_NAME,UNIVERSITY_NAME,SPEC_NAME,MIN_QUANT_MARK) values ('Physics','KPI','fdvnkdf','100');
--------------------------------------------------------
--  DDL for Index REQUIREMENT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEST"."REQUIREMENT_PK" ON "TEST"."REQUIREMENT" ("SUBJECT_NAME", "UNIVERSITY_NAME", "SPEC_NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table REQUIREMENT
--------------------------------------------------------

  ALTER TABLE "TEST"."REQUIREMENT" ADD CONSTRAINT "REQUIREMENT_PK" PRIMARY KEY ("SUBJECT_NAME", "UNIVERSITY_NAME", "SPEC_NAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "TEST"."REQUIREMENT" MODIFY ("SUBJECT_NAME" NOT NULL ENABLE);
 
  ALTER TABLE "TEST"."REQUIREMENT" MODIFY ("UNIVERSITY_NAME" NOT NULL ENABLE);
 
  ALTER TABLE "TEST"."REQUIREMENT" MODIFY ("SPEC_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table REQUIREMENT
--------------------------------------------------------

  ALTER TABLE "TEST"."REQUIREMENT" ADD CONSTRAINT "REQUIREMENT_SUBJECT_FK1" FOREIGN KEY ("SUBJECT_NAME")
	  REFERENCES "TEST"."SUBJECT" ("SUBJECT_NAME") ON DELETE CASCADE ENABLE;
 
  ALTER TABLE "TEST"."REQUIREMENT" ADD CONSTRAINT "REQUIREMENT_UNIVERSITY_FK1" FOREIGN KEY ("UNIVERSITY_NAME", "SPEC_NAME")
	  REFERENCES "TEST"."UNIVERSITY" ("UNIVERSITY_NAME", "SPEC_NAME") ON DELETE CASCADE ENABLE;