--------------------------------------------------------
--  File created - понедельник-октября-03-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Package STORES_PACKAGE
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE PACKAGE "USER2022"."STORES_PACKAGE" is
   function  f_select_categories                                                                  return  sys_refcursor;
  function f_select_product 
(in_id_categories  in  categories.id_categories%type,
 in_orderfield     in  varchar2 default 'name_product',
 in_ordertype      in  varchar2 default 'asc',
 in_minprice       in  number default null,
 in_maxprice       in  number default null,
 in_id_city        in  number default null,
 in_pagesize       in  number default 10,
 in_pagenumber     in  number default 1)  
return sys_refcursor;
   function  f_select_edinica_tovara  (in_id_product_ver  in  product.id_product_ver%type)        return  sys_refcursor;
   function  f_count_edinica_tovara  (in_id_product_ver  in  edinica_tovara.id_product_ver%type)  return sys_refcursor;

procedure outcategories
(in_id_product_ver      in   product.id_product_ver%type,
 out_id_categories      out  categories.id_categories%type,
 out_name_categories    out  categories.name_categories%type,
 out_name_product       out  product.name_product%type);  
   
procedure p_orders
(in_id_user                in  orders.id_user%type,
 in_id_product_ver         in  product.id_product_ver%type,
 in_id_stores              in  orders.id_stores%type,
 in_id_type_receipt_order  in  type_receipt_order.id_type_receipt_order%type);

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
                               in_info_product    in  product.info_product%type,
                               textout            out varchar2);

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
(in_id_categories  in  categories.id_categories%type,
 in_orderfield     in  varchar2 default 'name_product',
 in_ordertype      in  varchar2 default 'asc',
 in_minprice       in  number default null,
 in_maxprice       in  number default null,
 in_id_city        in  number default null,
 in_pagesize       in  number default 10,
 in_pagenumber     in  number default 1)  
return sys_refcursor
is
  refcur     sys_refcursor;
  l_sql      clob;
begin
 l_sql:='select *
         from (select a.*, row_number() over(order by '|| in_orderfield ||' ' || in_ordertype||') as row_number
               from (select distinct p.id_product_ver, p.name_product, p.price, count(et.id_product_ver) Count_product
                     from  product  p 
                     join  product_categories  pc  on  p.id_product_ver = pc.id_product_ver
                     join  edinica_tovara et on  p.id_product_ver = et.id_product_ver
                     join  stores s on s.id_stores = et.id_stores
                     join  city c on c.id_city = s.id_city
                     where  pc.id_categories = '||in_id_categories||'
                     and  p.active_from  <=  sysdate  and  p.active_to  >  sysdate
                     and  et.id_status_tovara = 3
                     and  et.id_product_ver = p.id_product_ver '
                     || case when in_minprice is not null 
                       then 'and  p.price >= ' || in_minprice end|| 
                       case when in_maxprice is not null
                       then 'and p.price<= ' || in_maxprice end||
                       case when in_id_city is not null
                       then 'and  c.id_city= ' || in_id_city end||'
                       group by  p.id_product_ver, p.name_product, p.price) a)
         where row_number between (' || in_pagenumber || '*' || in_pagesize ||'-'|| in_pagesize  ||'+1)
         and ( '|| in_pagenumber || '*' || in_pagesize ||')
         and  rownum<=' || in_pagesize||'';
           dbms_output.put_line(l_sql);
  open refcur for l_sql;
  return refcur;
end  f_select_product;                         /*Курсор товаров по выбранной категории*/


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

function  f_count_edinica_tovara
(in_id_product_ver  in  edinica_tovara.id_product_ver%type)
return sys_refcursor
is
refcur     sys_refcursor;
begin
 open refcur for
  select  c.name_city, count(et.id_product_ver)
    from  edinica_tovara et 
    join  stores s  on et.id_stores = s.id_stores
    join  city   c  on c.id_city = s.id_city
   where  et.id_product_ver = in_id_product_ver
     and  id_status_tovara = 3
group by  c.name_city;
  return  refcur;
   end  f_count_edinica_tovara;
   

procedure outcategories
(in_id_product_ver      in   product.id_product_ver%type,
 out_id_categories      out  categories.id_categories%type,
 out_name_categories    out  categories.name_categories%type,
 out_name_product       out  product.name_product%type)
 is
 begin
 select  distinct id_categories
   into  out_id_categories
   from  product_categories
  where  id_product_ver = in_id_product_ver;
 select  distinct name_categories
   into  out_name_categories
   from  categories c 
   join  product_categories  pc  on  c.id_categories = pc.id_categories
  where  id_product_ver  =  in_id_product_ver;
select  distinct name_product
  into  out_name_product
  from  product
 where  id_product_ver = in_id_product_ver;
 dbms_output.put_line('Наименование товара: '||out_name_product||
                      '. Категория: '||out_name_categories||
                      '. Номер категории: '||out_id_categories||'.');
 end  outcategories;

procedure p_orders
(in_id_user                in  orders.id_user%type,
 in_id_product_ver         in  product.id_product_ver%type,
 in_id_stores              in  orders.id_stores%type,
 in_id_type_receipt_order  in  type_receipt_order.id_type_receipt_order%type)
is
l_id_edinica_tovara  edinica_tovara.id_edinica_tovara%type;
l_name_product       product.name_product%type;
l_name_city          city.name_city%type;
l_name_stores        stores.name_stores%type;
l_id_orders          orders.id_order%type;
begin
select  min(id_edinica_tovara)
  into  l_id_edinica_tovara
  from  edinica_tovara et
 where  id_stores = in_id_stores
   and  id_product_ver = in_id_product_ver
   and  id_status_tovara = 3;
  
  select  c.name_city
    into  l_name_city
    from  city c join stores s on c.id_city = s.id_city
   where  s.id_stores = in_id_stores;
   
          select  name_stores
            into  l_name_stores
            from  stores
           where  id_stores = in_id_stores;
  if  l_id_edinica_tovara is null 
then  dbms_output.put_line( 'Товара в городе '||l_name_city||' нет в наличии!');
   else 
    insert into  orders (id_user, id_edinica_tovara, date_orders, id_stores)
         values         (in_id_user, l_id_edinica_tovara, sysdate, in_id_stores)
         returning id_order into l_id_orders;
         insert into  exec_orders (id_orders, id_type_receipt_order)
         values         (l_id_orders, in_id_type_receipt_order);
    update  edinica_tovara 
       set  id_status_tovara = 2  
     where  id_edinica_tovara = l_id_edinica_tovara;
commit;
select  name_product
  into  l_name_product
  from  product
 where  id_product = in_id_product_ver;
dbms_output.put_line ( 'Заказ успешно оформлен! Товар "' ||  l_name_product ||  '" зарезервирован в магазине "' ||l_name_stores|| '"!' ) ;
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
   update  exec_orders
      set  date_exec_orders = sysdate  
    where  id_orders = in_id_order;
dbms_output.put_line ( 'Заказ № ' || in_id_order || ' успешно завершен!' );
end  if;
   end  p_complet_order;


procedure   p_product_update  (in_id_product_ver  in  product.id_product_ver%type,
                               in_name_product    in  product.name_product%type,
                               in_price           in  product.price%type,
                               in_info_product    in  product.info_product%type,
                               textout            out varchar2)
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
  textout:='Вы действительно хотите изменить данные о товаре?';
  dbms_output.put_line(textout);
end p_product_update;

end  stores_package;

/
