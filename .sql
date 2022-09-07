--------------------------------------------------------
--  File created - �����-��������-07-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table CATEGORIES
--------------------------------------------------------

  CREATE TABLE "USER2022"."CATEGORIES" 
   (	"ID_CATEGORIES" NUMBER(*,0), 
	"NAME_CATEGORIES" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table CITY
--------------------------------------------------------

  CREATE TABLE "USER2022"."CITY" 
   (	"ID_CITY" NUMBER(*,0), 
	"NAME_CITY" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table EDINICA_TOVARA
--------------------------------------------------------

  CREATE TABLE "USER2022"."EDINICA_TOVARA" 
   (	"ID_EDINICA_TOVARA" NUMBER(*,0), 
	"ID_PRODUCT_VER" NUMBER(*,0), 
	"KOD_TOVARA" NUMBER(*,0), 
	"ID_STORES" NUMBER(*,0), 
	"ID_STATUS_TOVARA" NUMBER(*,0) DEFAULT 3
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table EXEC_ORDERS
--------------------------------------------------------

  CREATE TABLE "USER2022"."EXEC_ORDERS" 
   (	"ID_EXEC_ORDERS" NUMBER(*,0), 
	"ID_ORDERS" NUMBER(*,0), 
	"ID_TYPE_RECEIPT_ORDER" NUMBER(*,0), 
	"DATE_EXEC_ORDERS" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ORDERS
--------------------------------------------------------

  CREATE TABLE "USER2022"."ORDERS" 
   (	"ID_ORDER" NUMBER(*,0), 
	"ID_USER" NUMBER(*,0), 
	"ID_EDINICA_TOVARA" NUMBER(*,0), 
	"ID_STATUS_ORDERS" NUMBER(*,0) DEFAULT 2, 
	"DATE_ORDERS" DATE, 
	"ID_STORES" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PRODUCT
--------------------------------------------------------

  CREATE TABLE "USER2022"."PRODUCT" 
   (	"ID_PRODUCT" NUMBER(*,0), 
	"NAME_PRODUCT" VARCHAR2(100 BYTE), 
	"PRICE" NUMBER, 
	"INFO_PRODUCT" VARCHAR2(1000 BYTE), 
	"ID_PRODUCT_VER" NUMBER(*,0), 
	"ACTIVE_FROM" DATE DEFAULT sysdate, 
	"ACTIVE_TO" DATE DEFAULT '01.01.4000'
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PRODUCT_CATEGORIES
--------------------------------------------------------

  CREATE TABLE "USER2022"."PRODUCT_CATEGORIES" 
   (	"ID_PRODUCT_VER" NUMBER(*,0), 
	"ID_CATEGORIES" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table STATUS_ORDERS
--------------------------------------------------------

  CREATE TABLE "USER2022"."STATUS_ORDERS" 
   (	"ID_STATUS_ORDERS" NUMBER(*,0), 
	"NAME_STATUS_ORDERS" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table STATUS_TOVARA
--------------------------------------------------------

  CREATE TABLE "USER2022"."STATUS_TOVARA" 
   (	"ID_STATUS_TOVARA" NUMBER(*,0), 
	"NAME_STATUS_TOVARA" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table STORES
--------------------------------------------------------

  CREATE TABLE "USER2022"."STORES" 
   (	"ID_STORES" NUMBER(*,0), 
	"ADRESS" VARCHAR2(100 BYTE), 
	"ID_CITY" NUMBER(*,0), 
	"NAME_STORES" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TYPE_RECEIPT_ORDER
--------------------------------------------------------

  CREATE TABLE "USER2022"."TYPE_RECEIPT_ORDER" 
   (	"ID_TYPE_RECEIPT_ORDER" NUMBER(*,0), 
	"TYPE_RECEIPT" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table USERS
--------------------------------------------------------

  CREATE TABLE "USER2022"."USERS" 
   (	"ID_USER" NUMBER(*,0), 
	"NAME_USER" VARCHAR2(100 BYTE), 
	"EMAIL" VARCHAR2(100 BYTE), 
	"NUMBER_PHONE" VARCHAR2(11 BYTE), 
	"TYPE_USER" VARCHAR2(100 BYTE) DEFAULT '������'
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into USER2022.CATEGORIES
SET DEFINE OFF;
Insert into USER2022.CATEGORIES (ID_CATEGORIES,NAME_CATEGORIES) values ('7','����� � �����');
Insert into USER2022.CATEGORIES (ID_CATEGORIES,NAME_CATEGORIES) values ('1','������� Apple');
Insert into USER2022.CATEGORIES (ID_CATEGORIES,NAME_CATEGORIES) values ('2','����������');
Insert into USER2022.CATEGORIES (ID_CATEGORIES,NAME_CATEGORIES) values ('3','���������');
Insert into USER2022.CATEGORIES (ID_CATEGORIES,NAME_CATEGORIES) values ('4','�����������������');
Insert into USER2022.CATEGORIES (ID_CATEGORIES,NAME_CATEGORIES) values ('5','������� ������� �������');
Insert into USER2022.CATEGORIES (ID_CATEGORIES,NAME_CATEGORIES) values ('6','���������� � ��������');
REM INSERTING into USER2022.CITY
SET DEFINE OFF;
Insert into USER2022.CITY (ID_CITY,NAME_CITY) values ('1','�����');
Insert into USER2022.CITY (ID_CITY,NAME_CITY) values ('2','������������');
Insert into USER2022.CITY (ID_CITY,NAME_CITY) values ('3','������');
Insert into USER2022.CITY (ID_CITY,NAME_CITY) values ('4','���������');
Insert into USER2022.CITY (ID_CITY,NAME_CITY) values ('5','���������');
Insert into USER2022.CITY (ID_CITY,NAME_CITY) values ('6','������');
Insert into USER2022.CITY (ID_CITY,NAME_CITY) values ('7','���������');
Insert into USER2022.CITY (ID_CITY,NAME_CITY) values ('8','�����������');
REM INSERTING into USER2022.EDINICA_TOVARA
SET DEFINE OFF;
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('1','1','1','1','1');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('2','3','2','1','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('3','4','3','1','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('4','5','4','1','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('5','6','5','1','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('6','7','6','1','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('7','8','7','1','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('8','9','8','1','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('9','10','9','1','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('10','11','10','1','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('11','12','11','1','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('12','1','12','2','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('13','3','13','2','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('14','4','14','2','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('15','5','15','2','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('16','6','16','2','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('17','7','17','2','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('18','8','18','2','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('19','9','19','2','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('20','10','20','2','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('21','11','21','2','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('22','12','22','2','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('23','1','23','3','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('24','3','24','3','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('25','4','25','3','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('26','5','26','3','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('27','6','27','3','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('28','7','28','3','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('29','8','29','3','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('30','9','30','3','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('31','10','31','3','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('32','11','32','3','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('33','12','33','3','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('34','1','34','4','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('35','3','35','4','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('36','4','36','4','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('37','5','37','4','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('38','6','38','4','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('39','7','39','4','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('40','8','40','4','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('41','9','41','4','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('42','10','42','4','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('43','11','43','4','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('44','12','44','4','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('45','1','45','5','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('46','3','46','5','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('47','4','47','5','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('48','5','48','5','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('49','6','49','5','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('50','7','50','5','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('51','8','51','5','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('52','9','52','5','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('53','10','53','5','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('54','11','54','5','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('55','12','55','5','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('56','1','56','6','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('57','3','57','6','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('58','4','58','6','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('59','5','59','6','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('60','6','60','6','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('61','7','61','6','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('62','8','62','6','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('63','9','63','6','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('64','10','64','6','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('65','11','65','6','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('66','12','66','6','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('67','1','67','7','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('68','3','68','7','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('69','4','69','7','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('70','5','70','7','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('71','6','71','7','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('72','7','72','7','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('73','8','73','7','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('74','9','74','7','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('75','10','75','7','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('76','11','76','7','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('77','12','77','7','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('78','1','78','8','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('79','3','79','8','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('80','4','80','8','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('81','5','81','8','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('82','6','82','8','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('83','7','83','8','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('84','8','84','8','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('85','9','85','8','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('86','10','86','8','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('87','11','87','8','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('88','12','88','8','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('89','1','89','9','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('90','3','90','9','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('91','4','91','9','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('92','5','92','9','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('93','6','93','9','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('94','7','94','9','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('95','8','95','9','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('96','9','96','9','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('97','10','97','9','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('98','11','98','9','3');
Insert into USER2022.EDINICA_TOVARA (ID_EDINICA_TOVARA,ID_PRODUCT_VER,KOD_TOVARA,ID_STORES,ID_STATUS_TOVARA) values ('99','12','99','9','3');
REM INSERTING into USER2022.EXEC_ORDERS
SET DEFINE OFF;
Insert into USER2022.EXEC_ORDERS (ID_EXEC_ORDERS,ID_ORDERS,ID_TYPE_RECEIPT_ORDER,DATE_EXEC_ORDERS) values ('1','23','2',to_date('07.09.22','DD.MM.RR'));
REM INSERTING into USER2022.ORDERS
SET DEFINE OFF;
Insert into USER2022.ORDERS (ID_ORDER,ID_USER,ID_EDINICA_TOVARA,ID_STATUS_ORDERS,DATE_ORDERS,ID_STORES) values ('23','1','1','1',to_date('07.09.22','DD.MM.RR'),'1');
REM INSERTING into USER2022.PRODUCT
SET DEFINE OFF;
Insert into USER2022.PRODUCT (ID_PRODUCT,NAME_PRODUCT,PRICE,INFO_PRODUCT,ID_PRODUCT_VER,ACTIVE_FROM,ACTIVE_TO) values ('15','iPhone 13 128Gb ����: ������ ����','73000',null,'1',to_date('02.09.22','DD.MM.RR'),to_date('03.09.22','DD.MM.RR'));
Insert into USER2022.PRODUCT (ID_PRODUCT,NAME_PRODUCT,PRICE,INFO_PRODUCT,ID_PRODUCT_VER,ACTIVE_FROM,ACTIVE_TO) values ('16','iPhone 13 128Gb ����: ������ ����','70000',null,'1',to_date('03.09.22','DD.MM.RR'),to_date('04.09.22','DD.MM.RR'));
Insert into USER2022.PRODUCT (ID_PRODUCT,NAME_PRODUCT,PRICE,INFO_PRODUCT,ID_PRODUCT_VER,ACTIVE_FROM,ACTIVE_TO) values ('20','iPhone 13 128Gb ����: ������ ����','65000','...','1',to_date('04.09.22','DD.MM.RR'),to_date('05.09.22','DD.MM.RR'));
Insert into USER2022.PRODUCT (ID_PRODUCT,NAME_PRODUCT,PRICE,INFO_PRODUCT,ID_PRODUCT_VER,ACTIVE_FROM,ACTIVE_TO) values ('21','iPhone 13 128Gb ����: ������ ����','61000','...','1',to_date('05.09.22','DD.MM.RR'),to_date('01.01.00','DD.MM.RR'));
Insert into USER2022.PRODUCT (ID_PRODUCT,NAME_PRODUCT,PRICE,INFO_PRODUCT,ID_PRODUCT_VER,ACTIVE_FROM,ACTIVE_TO) values ('11','IPhone 13 128�� �������','68500','...','3',to_date('05.09.22','DD.MM.RR'),to_date('01.01.00','DD.MM.RR'));
Insert into USER2022.PRODUCT (ID_PRODUCT,NAME_PRODUCT,PRICE,INFO_PRODUCT,ID_PRODUCT_VER,ACTIVE_FROM,ACTIVE_TO) values ('12','�������������� Acer ES Series 3 AES003','25200','������������ �������� 20 ��/�, 
����� ���� �� ����� ������ 30 ��, ������� ������� 7800 mAh','4',to_date('01.09.22','DD.MM.RR'),to_date('05.09.22','DD.MM.RR'));
Insert into USER2022.PRODUCT (ID_PRODUCT,NAME_PRODUCT,PRICE,INFO_PRODUCT,ID_PRODUCT_VER,ACTIVE_FROM,ACTIVE_TO) values ('13','�������������� Acer ES Series 3 AES003','23000','������������ �������� 20 ��/� 
����� ���� �� ����� ������ 30 �� ������� ������� 7800 mAh','4',to_date('05.09.22','DD.MM.RR'),to_date('01.01.00','DD.MM.RR'));
Insert into USER2022.PRODUCT (ID_PRODUCT,NAME_PRODUCT,PRICE,INFO_PRODUCT,ID_PRODUCT_VER,ACTIVE_FROM,ACTIVE_TO) values ('10','���������� ������ Bosch WLP20265OE','40000','������:
6.5��, 1000��/���;
��� ��������:
�����������;
����� (������/�����/�����������������):
A/ B/ A;
��� (������/�����):
53��/ 72��;
������� (�����):
59.8 � 84.5 � 44.6 ��;
����:
�����;','5',to_date('05.09.22','DD.MM.RR'),to_date('01.01.00','DD.MM.RR'));
Insert into USER2022.PRODUCT (ID_PRODUCT,NAME_PRODUCT,PRICE,INFO_PRODUCT,ID_PRODUCT_VER,ACTIVE_FROM,ACTIVE_TO) values ('1','IPhone 11 64�� �����','43500','...','6',to_date('05.09.22','DD.MM.RR'),to_date('01.01.00','DD.MM.RR'));
Insert into USER2022.PRODUCT (ID_PRODUCT,NAME_PRODUCT,PRICE,INFO_PRODUCT,ID_PRODUCT_VER,ACTIVE_FROM,ACTIVE_TO) values ('2','��������� LED Samsung UE32N4000AUXCE ������','19500',null,'7',to_date('05.09.22','DD.MM.RR'),to_date('01.01.00','DD.MM.RR'));
Insert into USER2022.PRODUCT (ID_PRODUCT,NAME_PRODUCT,PRICE,INFO_PRODUCT,ID_PRODUCT_VER,ACTIVE_FROM,ACTIVE_TO) values ('3','Xiaomi Redmi 10 ����� 64��','13000',null,'8',to_date('05.09.22','DD.MM.RR'),to_date('01.01.00','DD.MM.RR'));
Insert into USER2022.PRODUCT (ID_PRODUCT,NAME_PRODUCT,PRICE,INFO_PRODUCT,ID_PRODUCT_VER,ACTIVE_FROM,ACTIVE_TO) values ('4','�����-���������� Bosch UniversalDrill 18V 06039D4000 POWER FOR ALL 18V','5000',null,'9',to_date('05.09.22','DD.MM.RR'),to_date('01.01.00','DD.MM.RR'));
Insert into USER2022.PRODUCT (ID_PRODUCT,NAME_PRODUCT,PRICE,INFO_PRODUCT,ID_PRODUCT_VER,ACTIVE_FROM,ACTIVE_TO) values ('5','����������� � ������������� Samsung RB30A30N0WW/WT �����','39500',null,'10',to_date('05.09.22','DD.MM.RR'),to_date('01.01.00','DD.MM.RR'));
Insert into USER2022.PRODUCT (ID_PRODUCT,NAME_PRODUCT,PRICE,INFO_PRODUCT,ID_PRODUCT_VER,ACTIVE_FROM,ACTIVE_TO) values ('6','11.6" ������� ASUS Laptop 11 E210MA-GJ151T ������','21800',null,'11',to_date('05.09.22','DD.MM.RR'),to_date('01.01.00','DD.MM.RR'));
Insert into USER2022.PRODUCT (ID_PRODUCT,NAME_PRODUCT,PRICE,INFO_PRODUCT,ID_PRODUCT_VER,ACTIVE_FROM,ACTIVE_TO) values ('7','IPhone11 64�� ������','43000',null,'12',to_date('05.09.22','DD.MM.RR'),to_date('01.01.00','DD.MM.RR'));
REM INSERTING into USER2022.PRODUCT_CATEGORIES
SET DEFINE OFF;
Insert into USER2022.PRODUCT_CATEGORIES (ID_PRODUCT_VER,ID_CATEGORIES) values ('1','1');
Insert into USER2022.PRODUCT_CATEGORIES (ID_PRODUCT_VER,ID_CATEGORIES) values ('7','2');
Insert into USER2022.PRODUCT_CATEGORIES (ID_PRODUCT_VER,ID_CATEGORIES) values ('8','3');
Insert into USER2022.PRODUCT_CATEGORIES (ID_PRODUCT_VER,ID_CATEGORIES) values ('9','4');
Insert into USER2022.PRODUCT_CATEGORIES (ID_PRODUCT_VER,ID_CATEGORIES) values ('5','5');
Insert into USER2022.PRODUCT_CATEGORIES (ID_PRODUCT_VER,ID_CATEGORIES) values ('10','5');
Insert into USER2022.PRODUCT_CATEGORIES (ID_PRODUCT_VER,ID_CATEGORIES) values ('3','1');
Insert into USER2022.PRODUCT_CATEGORIES (ID_PRODUCT_VER,ID_CATEGORIES) values ('11','6');
Insert into USER2022.PRODUCT_CATEGORIES (ID_PRODUCT_VER,ID_CATEGORIES) values ('4','7');
Insert into USER2022.PRODUCT_CATEGORIES (ID_PRODUCT_VER,ID_CATEGORIES) values ('6','1');
Insert into USER2022.PRODUCT_CATEGORIES (ID_PRODUCT_VER,ID_CATEGORIES) values ('12','1');
REM INSERTING into USER2022.STATUS_ORDERS
SET DEFINE OFF;
Insert into USER2022.STATUS_ORDERS (ID_STATUS_ORDERS,NAME_STATUS_ORDERS) values ('4','������������');
Insert into USER2022.STATUS_ORDERS (ID_STATUS_ORDERS,NAME_STATUS_ORDERS) values ('5','�������');
Insert into USER2022.STATUS_ORDERS (ID_STATUS_ORDERS,NAME_STATUS_ORDERS) values ('1','��������');
Insert into USER2022.STATUS_ORDERS (ID_STATUS_ORDERS,NAME_STATUS_ORDERS) values ('2','����������');
Insert into USER2022.STATUS_ORDERS (ID_STATUS_ORDERS,NAME_STATUS_ORDERS) values ('3','����� � ���������');
REM INSERTING into USER2022.STATUS_TOVARA
SET DEFINE OFF;
Insert into USER2022.STATUS_TOVARA (ID_STATUS_TOVARA,NAME_STATUS_TOVARA) values ('1','�������');
Insert into USER2022.STATUS_TOVARA (ID_STATUS_TOVARA,NAME_STATUS_TOVARA) values ('2','���������������');
Insert into USER2022.STATUS_TOVARA (ID_STATUS_TOVARA,NAME_STATUS_TOVARA) values ('3','� �������');
REM INSERTING into USER2022.STORES
SET DEFINE OFF;
Insert into USER2022.STORES (ID_STORES,ADRESS,ID_CITY,NAME_STORES) values ('1','������, 16','1','ElectroPerm');
Insert into USER2022.STORES (ID_STORES,ADRESS,ID_CITY,NAME_STORES) values ('2','������, 78','2','ElectroEkb');
Insert into USER2022.STORES (ID_STORES,ADRESS,ID_CITY,NAME_STORES) values ('3','�������, 48','3','ElectroMsk');
Insert into USER2022.STORES (ID_STORES,ADRESS,ID_CITY,NAME_STORES) values ('4','�������� �����������, 3','4','ElectroKrasnodar');
Insert into USER2022.STORES (ID_STORES,ADRESS,ID_CITY,NAME_STORES) values ('5','�������, 10','5','ElectroVolgograd');
Insert into USER2022.STORES (ID_STORES,ADRESS,ID_CITY,NAME_STORES) values ('6','������������,15','6','ElectroSamara');
Insert into USER2022.STORES (ID_STORES,ADRESS,ID_CITY,NAME_STORES) values ('7','���������,99','7','ElectroChelyabinsk');
Insert into USER2022.STORES (ID_STORES,ADRESS,ID_CITY,NAME_STORES) values ('8','����������, 89','8','ElectroVladivostok');
Insert into USER2022.STORES (ID_STORES,ADRESS,ID_CITY,NAME_STORES) values ('9','��������, 25','3','SkladMsk');
REM INSERTING into USER2022.TYPE_RECEIPT_ORDER
SET DEFINE OFF;
Insert into USER2022.TYPE_RECEIPT_ORDER (ID_TYPE_RECEIPT_ORDER,TYPE_RECEIPT) values ('1','��������');
Insert into USER2022.TYPE_RECEIPT_ORDER (ID_TYPE_RECEIPT_ORDER,TYPE_RECEIPT) values ('2','���������');
REM INSERTING into USER2022.USERS
SET DEFINE OFF;
Insert into USER2022.USERS (ID_USER,NAME_USER,EMAIL,NUMBER_PHONE,TYPE_USER) values ('1','������ ���� ��������','ivanovii@mail.ru','89996548978','������');
Insert into USER2022.USERS (ID_USER,NAME_USER,EMAIL,NUMBER_PHONE,TYPE_USER) values ('2','������� ������ ��������','semenovsi@mail.ru','89068889632','���������');
Insert into USER2022.USERS (ID_USER,NAME_USER,EMAIL,NUMBER_PHONE,TYPE_USER) values ('3','������� ����� ���������','pavlovaos@mail.ru','89091115436','������');
Insert into USER2022.USERS (ID_USER,NAME_USER,EMAIL,NUMBER_PHONE,TYPE_USER) values ('4','������� ������� ����������','borisovna@mail.ru','89519876565','������');
Insert into USER2022.USERS (ID_USER,NAME_USER,EMAIL,NUMBER_PHONE,TYPE_USER) values ('5','����� ���� ����������','borovgv@mail.ru','89995463232','������');
Insert into USER2022.USERS (ID_USER,NAME_USER,EMAIL,NUMBER_PHONE,TYPE_USER) values ('6','������ ����� �������������','tuchinama@mail.ru','89994568592','���������');
Insert into USER2022.USERS (ID_USER,NAME_USER,EMAIL,NUMBER_PHONE,TYPE_USER) values ('7','������ ��������� ����������','rychinaan@mail.ru','89064887826','������');
Insert into USER2022.USERS (ID_USER,NAME_USER,EMAIL,NUMBER_PHONE,TYPE_USER) values ('8','����� ����� ���������','letovss@mail.ru','89099998585','������');
Insert into USER2022.USERS (ID_USER,NAME_USER,EMAIL,NUMBER_PHONE,TYPE_USER) values ('9','������� ������� ��������','sidorovep@mail.ru','89096665522','������');
Insert into USER2022.USERS (ID_USER,NAME_USER,EMAIL,NUMBER_PHONE,TYPE_USER) values ('10','��������� ����� ����������','verevkinaes@mail.ru','89096254586','������');
Insert into USER2022.USERS (ID_USER,NAME_USER,EMAIL,NUMBER_PHONE,TYPE_USER) values ('42','������ ������ ����������','vlasovsn@mail.ru','89995653298','������');
