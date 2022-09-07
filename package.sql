--------------------------------------------------------
--  File created - четверг-сентября-08-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Package STORES_PACKAGE
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE PACKAGE "USER2022"."STORES_PACKAGE" is
   function  f_select_categories                                                            return  sys_refcursor;
   function  f_select_product (in_id_categories  in  categories.id_categories%type)         return  sys_refcursor;
   function  f_select_edinica_tovara  (in_id_product_ver  in  product.id_product_ver%type)  return  sys_refcursor;
   
   
procedure p_orders
(in_id_user         in  orders.id_user%type,
 in_id_product_ver  in  product.id_product_ver%type,
 in_id_stores       in  orders.id_stores%type);

procedure  p_add_user
(in_name_user     in  users.name_user%type,
 in_email         in  users.email%type,
 in_number_phone  in  users.number_phone%type);



procedure  p_edinica_tovara_create                                              
(in_name_product     in  product.name_product%type,
 in_id_stores        in  edinica_tovara.id_stores%type,
 in_price            in  product.price%type,
 in_info_product     in  product.info_product%type,
 in_id_product_ver   in  product.id_product_ver%type,
 in_kod_tovara       in  edinica_tovara.kod_tovara%type);

procedure  p_cancel_order
(in_id_order  IN  orders.id_order%type);

procedure  p_complet_order
(in_id_order  IN  orders.id_order%type);

procedure   p_product_update  (in_id_product_ver  in  product.id_product_ver%type,
                               in_name_product    in  product.name_product%type,
                               in_price           in  product.price%type,
                               in_info_product    in  product.info_product%type);

end stores_package;

/
--------------------------------------------------------
--  DDL for Package Body STORES_PACKAGE
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE PACKAGE BODY "USER2022"."STORES_PACKAGE" as
function f_select_categories 
return sys_refcursor
is
  refcur     sys_refcursor;
begin
  open  refcur  for
    select  *  
      from  categories;
  return  refcur;
end  f_select_categories;                            /*Курсор каталога товаров*/

function f_select_product 
(in_id_categories  in  categories.id_categories%type)
return sys_refcursor
is
  refcur     sys_refcursor;
begin
  open refcur for
                select  p.id_product_ver, p.name_product, p.price 
                  from  product  p 
                  join  product_categories  pc  on  p.id_product_ver = pc.id_product_ver
                 where  pc.id_categories = in_id_categories
                   and  p.active_from  <=  sysdate  and  p.active_to  >  sysdate
                   and  exists  (select  *
                                   from  edinica_tovara et 
                                   join  product p  on  et.id_product_ver = p.id_product_ver
                                  where  et.id_product_ver = p.id_product_ver
                                    and  et.id_status_tovara = 3);
  return refcur;
end  f_select_product;                              /*Курсор товаров по выбранной категории*/

function f_select_edinica_tovara
(in_id_product_ver  in  product.id_product_ver%type)
return sys_refcursor
is
  refcur     sys_refcursor;
begin
  open refcur for
    select  p.id_product_ver, p.name_product, p.price, p.info_product 
      from  product p
     where  p.active_from  <=  sysdate  
       and  p.active_to  >  sysdate
       and  p.id_product_ver  =  in_id_product_ver;
  return refcur;
end f_select_edinica_tovara;                               /*Курсор единицы товара*/


procedure p_orders
(in_id_user         in  orders.id_user%type,
 in_id_product_ver  in  product.id_product_ver%type,
 in_id_stores       in  orders.id_stores%type)
is
l_id_edinica_tovara  edinica_tovara.id_edinica_tovara%type;
l_name_product  product.name_product%type;
begin
select  min (id_edinica_tovara) 
  into  l_id_edinica_tovara
  from  edinica_tovara
 where  id_product_ver = in_id_product_ver
   and  id_status_tovara = 3;
  if  l_id_edinica_tovara  is  null 
then  dbms_output.put_line ( 'Товара нет в наличии!' ) ;
else 
    insert into  orders (id_user, id_edinica_tovara, date_orders, id_stores)
         values         (in_id_user, l_id_edinica_tovara, sysdate, in_id_stores);
    update  edinica_tovara 
       set  id_status_tovara = 2  
     where  id_edinica_tovara = l_id_edinica_tovara;
commit;
select  name_product
  into  l_name_product
  from  product
 where  id_product = in_id_product_ver;
dbms_output.put_line ( 'Заказ успешно оформлен! Товар "' ||  l_name_product ||  '" зарезервирован!' ) ;
end  if;
   end  p_orders;


procedure  p_add_user
(in_name_user     in  users.name_user%type,
 in_email         in  users.email%type,
 in_number_phone  in  users.number_phone%type)
is
p_email  users.email%type;
l_check  number;
begin
select  count(1)
  into  l_check
  from  users
 where  trim(lower(email)) = trim(lower(in_email));
  if  l_check !=0  
then  
dbms_output.put_line ( 'Пользователь с электронным адресом "' || in_email || '" уже зарегистрирован!') ;
else
    insert  into  users  (name_user, email, number_phone)
                 values  (in_name_user, in_email, in_number_phone);
dbms_output.put_line ( 'Пользователь успешно зарегестрирован!' ) ;
end  if;
commit;
   end  p_add_user;


procedure  p_edinica_tovara_create                                              
(in_name_product     in  product.name_product%type,
 in_id_stores        in  edinica_tovara.id_stores%type,
 in_price            in  product.price%type,
 in_info_product     in  product.info_product%type,
 in_id_product_ver   in  product.id_product_ver%type,
 in_kod_tovara       in  edinica_tovara.kod_tovara%type)
is
l_id_product_ver  product.id_product_ver%type;
begin
 select  max(id_product_ver)
 into  l_id_product_ver
 from  product
 where  id_product_ver = in_id_product_ver
 and  active_from <= sysdate
 and  active_to > sysdate;
  if  l_id_product_ver is null
  then 
   insert  into  product( name_product, price, info_product, id_product_ver)
         values         ( in_name_product, in_price, in_info_product, l_id_product_ver);
  end if;
         
   insert  into  edinica_tovara( id_product_ver, id_stores, kod_tovara)
         values                ( in_id_product_ver, in_id_stores, in_kod_tovara);
end  p_edinica_tovara_create;


procedure  p_cancel_order
(in_id_order  in  orders.id_order%type)
is
p_id_status_orders  orders.id_status_orders%type;
begin
select  id_status_orders
  into  p_id_status_orders
  from  orders
 where  id_order = in_id_order;
   if  p_id_status_orders = 5  
 then  dbms_output.put_line ( 'Нельзя отменить заказ! Заказ уже отменен!' );
elsif  p_id_status_orders = 1  
 then  dbms_output.put_line ( 'Нельзя отменить заказ! Заказ уже завершен!' );
 else 
   update  orders  
      set  id_status_orders = 5  
    where  id_order = in_id_order;
      update  edinica_tovara  
         set  id_status_tovara = 3  
       where  id_edinica_tovara = (select   id_edinica_tovara 
                                     from   orders
                                    where   id_order = in_id_order)
         and  id_status_tovara 
      not in ( 1 ); 
dbms_output.put_line ( 'Заказ № ' || in_id_order || ' успешно отменен!' );
end  if;
   end  p_cancel_order;


procedure  p_complet_order
(in_id_order  in  orders.id_order%type)
is
p_id_status_orders  orders.id_status_orders%type;
begin
select  id_status_orders
  into  p_id_status_orders
  from  orders
 where  id_order = in_id_order;
   if  p_id_status_orders = 1  
 then  dbms_output.put_line ( ' Заказ уже завершен!' );
elsif  p_id_status_orders = 5 
 then  dbms_output.put_line ( 'Нельзя завершить заказ! Заказ отменен!' );
 else 
update  orders  
   set  id_status_orders = 1  
 where  id_order = in_id_order;
   update  edinica_tovara  
      set  id_status_tovara = 1  
    where  id_edinica_tovara = (select   id_edinica_tovara 
                                  from   orders
                                 where   id_order = in_id_order);
dbms_output.put_line ( 'Заказ № ' || in_id_order || ' успешно завершен!' );
end  if;
   end  p_complet_order;


procedure   p_product_update  (in_id_product_ver  in  product.id_product_ver%type,
                               in_name_product    in  product.name_product%type,
                               in_price           in  product.price%type,
                               in_info_product    in  product.info_product%type)
is

begin
for rec in (
    with dtb_old as (select  p.id_product_ver, 
                             p.name_product, 
                             p.price, 
                             p.info_product
                     from    product p
                     where   p.active_from <= sysdate
                     and     p.active_to > sysdate
                     and     p.id_product_ver = nvl(in_id_product_ver,p.id_product_ver)),
    dtb_new as (select  in_id_product_ver id_product_ver,
                        in_name_product name_product,
                        in_price price,
                        in_info_product info_product
                from    dual)
    select  tb.new_data,
            tb.id_product_ver, 
            tb.name_product, 
            tb.price, 
            tb.info_product
    from    (
              (
                  select  0 new_data,
                          dtb_old.*
                  from    dtb_old
                  minus
                  select  0 new_data,
                          dtb_new.*
                  from    dtb_new
              ) 
              union all 
              (
                  select  1 new_data,
                          dtb_new.*
                  from    dtb_new
                  minus
                  select  1 new_data,
                          dtb_old.*
                  from    dtb_old
              )
            ) tb
    order by new_data 
  ) loop
   if rec.new_data = 0 then
      update  product
      set     active_to = sysdate
      where   id_product_ver = in_id_product_ver
      and     active_from <= sysdate
      and     active_to > sysdate;
    else
    insert into  product  (price, name_product, id_product_ver, info_product)
         values           (in_price, in_name_product, in_id_product_ver, in_info_product);
    end if;
  end loop;
end p_product_update;

end  stores_package;

/
