--------------------------------------------------------
--  File created - среда-сент€бр€-07-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Trigger TR_SQ_CATEGORIES
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "USER2022"."TR_SQ_CATEGORIES" 
  before INSERT or update ON categories FOR EACH ROW
BEGIN
if :new.id_categories is null then
select sq_categories.nextval into :new.id_categories from dual;
end if;
end;
/
ALTER TRIGGER "USER2022"."TR_SQ_CATEGORIES" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TR_SQ_CITY
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "USER2022"."TR_SQ_CITY" 
  before INSERT or update ON city FOR EACH ROW
BEGIN
if :new.id_city is null then
select sq_city.nextval into :new.id_city from dual;
end if;
end;
/
ALTER TRIGGER "USER2022"."TR_SQ_CITY" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TR_SQ_EDINICA_TOVARA
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "USER2022"."TR_SQ_EDINICA_TOVARA" 
  before INSERT or update ON edinica_tovara FOR EACH ROW
BEGIN
if :new.id_edinica_tovara is null then
select sq_edinica_tovara.nextval into :new.id_edinica_tovara from dual;
end if;
end;
/
ALTER TRIGGER "USER2022"."TR_SQ_EDINICA_TOVARA" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TR_SQ_EXEC_ORDERS
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "USER2022"."TR_SQ_EXEC_ORDERS" 
  before INSERT or update ON exec_orders FOR EACH ROW
BEGIN
if :new.id_exec_orders is null then
select sq_exec_orders.nextval into :new.id_exec_orders from dual;
end if;
end;
/
ALTER TRIGGER "USER2022"."TR_SQ_EXEC_ORDERS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TR_SQ_KOD_TOVARA
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "USER2022"."TR_SQ_KOD_TOVARA" 
  before INSERT or update ON edinica_tovara FOR EACH ROW
BEGIN
if :new.kod_tovara is null then
select sq_kod_tovara.nextval into :new.kod_tovara from dual;
end if;
end;
/
ALTER TRIGGER "USER2022"."TR_SQ_KOD_TOVARA" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TR_SQ_ORDERS
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "USER2022"."TR_SQ_ORDERS" 
  before INSERT or update ON orders FOR EACH ROW
BEGIN
if :new.id_order is null then
select sq_orders.nextval into :new.id_order from dual;
end if;
end;
/
ALTER TRIGGER "USER2022"."TR_SQ_ORDERS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TR_SQ_PRODUCT
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "USER2022"."TR_SQ_PRODUCT" 
  before INSERT or update ON product FOR EACH ROW
BEGIN
if :new.id_product is null then
select sq_product.nextval into :new.id_product from dual;
end if;
end;
/
ALTER TRIGGER "USER2022"."TR_SQ_PRODUCT" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TR_SQ_STATUS_ORDERS
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "USER2022"."TR_SQ_STATUS_ORDERS" 
  before INSERT or update ON status_orders FOR EACH ROW
BEGIN
if :new.id_status_orders is null then
select sq_status_orders.nextval into :new.id_status_orders from dual;
end if;
end;
/
ALTER TRIGGER "USER2022"."TR_SQ_STATUS_ORDERS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TR_SQ_STORES
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "USER2022"."TR_SQ_STORES" 
  before INSERT or update ON stores FOR EACH ROW
BEGIN
if :new.id_stores is null then
select sq_stores.nextval into :new.id_stores from dual;
end if;
end;
/
ALTER TRIGGER "USER2022"."TR_SQ_STORES" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TR_SQ_TYPE_RECEIPT_ORDER
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "USER2022"."TR_SQ_TYPE_RECEIPT_ORDER" 
  before INSERT or update ON type_receipt_order FOR EACH ROW
BEGIN
if :new.id_type_receipt_order is null then
select sq_type_receipt_order.nextval into :new.id_type_receipt_order from dual;
end if;
end;
/
ALTER TRIGGER "USER2022"."TR_SQ_TYPE_RECEIPT_ORDER" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TR_SQ_USERS
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "USER2022"."TR_SQ_USERS" 
  before INSERT or update ON users FOR EACH ROW
BEGIN
if :new.id_user is null then
select sq_users.nextval into :new.id_user from dual;
end if;
end;
/
ALTER TRIGGER "USER2022"."TR_SQ_USERS" ENABLE;
