--------------------------------------------------------
--  File created - понедельник-сентября-12-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for View COUNT_PRODUCT_STORES
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "USER2022"."COUNT_PRODUCT_STORES" ("NAME_STORES", "NAME_PRODUCT", "COUNT") AS 
  select  s.name_stores, p.name_product, count(et.id_edinica_tovara) count
  from  stores  s  
  join  edinica_tovara  et  on  s.id_stores = et.id_stores
  join  product  p  on p.id_product_ver = et.id_product_ver
 where  p.active_from <= sysdate 
   and  p.active_to > sysdate
   group by s.name_stores, p.name_product
   order by s.name_stores, p.name_product
;
--------------------------------------------------------
--  DDL for View PRODUCT_VIEW
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "USER2022"."PRODUCT_VIEW" ("ID_PRODUCT_VER", "NAME_PRODUCT", "PRICE") AS 
  select  id_product_ver, name_product, price
  from  product
 where  active_from <= sysdate 
   and active_to > sysdate
;
REM INSERTING into USER2022.COUNT_PRODUCT_STORES
SET DEFINE OFF;
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroChelyabinsk','IPhone 11 64Гб Белый','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroChelyabinsk','iPhone 13 128Gb Цвет: темная ночь','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroChelyabinsk','IPhone 13 128Гб Розовый','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroChelyabinsk','IPhone11 64Гб Черный','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroChelyabinsk','Xiaomi Redmi 10 Синий 64Гб','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroChelyabinsk','Дрель-шуруповерт Bosch UniversalDrill 18V 06039D4000 POWER FOR ALL 18V','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroChelyabinsk','Стиральная машина Bosch WLP20265OE','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroChelyabinsk','Телевизор LED Samsung UE32N4000AUXCE черный','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroChelyabinsk','Холодильник с морозильником Samsung RB30A30N0WW/WT белый','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroChelyabinsk','Электросамокат Acer ES Series 3 AES003','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroChelyabinsk','11.6" Ноутбук ASUS Laptop 11 E210MA-GJ151T черный','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroEkb','IPhone 11 64Гб Белый','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroEkb','iPhone 13 128Gb Цвет: темная ночь','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroEkb','IPhone 13 128Гб Розовый','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroEkb','IPhone11 64Гб Черный','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroEkb','Xiaomi Redmi 10 Синий 64Гб','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroEkb','Дрель-шуруповерт Bosch UniversalDrill 18V 06039D4000 POWER FOR ALL 18V','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroEkb','Стиральная машина Bosch WLP20265OE','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroEkb','Телевизор LED Samsung UE32N4000AUXCE черный','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroEkb','Холодильник с морозильником Samsung RB30A30N0WW/WT белый','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroEkb','Электросамокат Acer ES Series 3 AES003','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroEkb','11.6" Ноутбук ASUS Laptop 11 E210MA-GJ151T черный','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroKrasnodar','IPhone 11 64Гб Белый','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroKrasnodar','iPhone 13 128Gb Цвет: темная ночь','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroKrasnodar','IPhone 13 128Гб Розовый','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroKrasnodar','IPhone11 64Гб Черный','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroKrasnodar','Xiaomi Redmi 10 Синий 64Гб','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroKrasnodar','Дрель-шуруповерт Bosch UniversalDrill 18V 06039D4000 POWER FOR ALL 18V','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroKrasnodar','Стиральная машина Bosch WLP20265OE','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroKrasnodar','Телевизор LED Samsung UE32N4000AUXCE черный','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroKrasnodar','Холодильник с морозильником Samsung RB30A30N0WW/WT белый','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroKrasnodar','Электросамокат Acer ES Series 3 AES003','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroKrasnodar','11.6" Ноутбук ASUS Laptop 11 E210MA-GJ151T черный','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroMsk','IPhone 11 64Гб Белый','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroMsk','iPhone 13 128Gb Цвет: темная ночь','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroMsk','IPhone 13 128Гб Розовый','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroMsk','IPhone11 64Гб Черный','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroMsk','Xiaomi Redmi 10 Синий 64Гб','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroMsk','Дрель-шуруповерт Bosch UniversalDrill 18V 06039D4000 POWER FOR ALL 18V','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroMsk','Стиральная машина Bosch WLP20265OE','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroMsk','Телевизор LED Samsung UE32N4000AUXCE черный','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroMsk','Холодильник с морозильником Samsung RB30A30N0WW/WT белый','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroMsk','Электросамокат Acer ES Series 3 AES003','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroMsk','11.6" Ноутбук ASUS Laptop 11 E210MA-GJ151T черный','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroPerm','IPhone 11 64Гб Белый','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroPerm','iPhone 13 128Gb Цвет: темная ночь','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroPerm','IPhone 13 128Гб Розовый','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroPerm','IPhone11 64Гб Черный','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroPerm','Xiaomi Redmi 10 Синий 64Гб','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroPerm','Дрель-шуруповерт Bosch UniversalDrill 18V 06039D4000 POWER FOR ALL 18V','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroPerm','Стиральная машина Bosch WLP20265OE','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroPerm','Телевизор LED Samsung UE32N4000AUXCE черный','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroPerm','Холодильник с морозильником Samsung RB30A30N0WW/WT белый','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroPerm','Электросамокат Acer ES Series 3 AES003','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroPerm','11.6" Ноутбук ASUS Laptop 11 E210MA-GJ151T черный','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroSamara','IPhone 11 64Гб Белый','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroSamara','iPhone 13 128Gb Цвет: темная ночь','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroSamara','IPhone 13 128Гб Розовый','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroSamara','IPhone11 64Гб Черный','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroSamara','Xiaomi Redmi 10 Синий 64Гб','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroSamara','Дрель-шуруповерт Bosch UniversalDrill 18V 06039D4000 POWER FOR ALL 18V','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroSamara','Стиральная машина Bosch WLP20265OE','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroSamara','Телевизор LED Samsung UE32N4000AUXCE черный','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroSamara','Холодильник с морозильником Samsung RB30A30N0WW/WT белый','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroSamara','Электросамокат Acer ES Series 3 AES003','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroSamara','11.6" Ноутбук ASUS Laptop 11 E210MA-GJ151T черный','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroVladivostok','IPhone 11 64Гб Белый','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroVladivostok','iPhone 13 128Gb Цвет: темная ночь','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroVladivostok','IPhone 13 128Гб Розовый','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroVladivostok','IPhone11 64Гб Черный','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroVladivostok','Xiaomi Redmi 10 Синий 64Гб','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroVladivostok','Дрель-шуруповерт Bosch UniversalDrill 18V 06039D4000 POWER FOR ALL 18V','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroVladivostok','Стиральная машина Bosch WLP20265OE','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroVladivostok','Телевизор LED Samsung UE32N4000AUXCE черный','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroVladivostok','Холодильник с морозильником Samsung RB30A30N0WW/WT белый','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroVladivostok','Электросамокат Acer ES Series 3 AES003','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroVladivostok','11.6" Ноутбук ASUS Laptop 11 E210MA-GJ151T черный','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroVolgograd','IPhone 11 64Гб Белый','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroVolgograd','iPhone 13 128Gb Цвет: темная ночь','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroVolgograd','IPhone 13 128Гб Розовый','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroVolgograd','IPhone11 64Гб Черный','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroVolgograd','Xiaomi Redmi 10 Синий 64Гб','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroVolgograd','Дрель-шуруповерт Bosch UniversalDrill 18V 06039D4000 POWER FOR ALL 18V','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroVolgograd','Стиральная машина Bosch WLP20265OE','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroVolgograd','Телевизор LED Samsung UE32N4000AUXCE черный','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroVolgograd','Холодильник с морозильником Samsung RB30A30N0WW/WT белый','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroVolgograd','Электросамокат Acer ES Series 3 AES003','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('ElectroVolgograd','11.6" Ноутбук ASUS Laptop 11 E210MA-GJ151T черный','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('SkladMsk','IPhone 11 64Гб Белый','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('SkladMsk','iPhone 13 128Gb Цвет: темная ночь','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('SkladMsk','IPhone 13 128Гб Розовый','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('SkladMsk','IPhone11 64Гб Черный','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('SkladMsk','Xiaomi Redmi 10 Синий 64Гб','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('SkladMsk','Дрель-шуруповерт Bosch UniversalDrill 18V 06039D4000 POWER FOR ALL 18V','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('SkladMsk','Стиральная машина Bosch WLP20265OE','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('SkladMsk','Телевизор LED Samsung UE32N4000AUXCE черный','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('SkladMsk','Холодильник с морозильником Samsung RB30A30N0WW/WT белый','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('SkladMsk','Электросамокат Acer ES Series 3 AES003','1');
Insert into USER2022.COUNT_PRODUCT_STORES (NAME_STORES,NAME_PRODUCT,COUNT) values ('SkladMsk','11.6" Ноутбук ASUS Laptop 11 E210MA-GJ151T черный','1');
REM INSERTING into USER2022.PRODUCT_VIEW
SET DEFINE OFF;
Insert into USER2022.PRODUCT_VIEW (ID_PRODUCT_VER,NAME_PRODUCT,PRICE) values ('3','IPhone 13 128Гб Розовый','68500');
Insert into USER2022.PRODUCT_VIEW (ID_PRODUCT_VER,NAME_PRODUCT,PRICE) values ('4','Электросамокат Acer ES Series 3 AES003','23000');
Insert into USER2022.PRODUCT_VIEW (ID_PRODUCT_VER,NAME_PRODUCT,PRICE) values ('5','Стиральная машина Bosch WLP20265OE','40000');
Insert into USER2022.PRODUCT_VIEW (ID_PRODUCT_VER,NAME_PRODUCT,PRICE) values ('1','iPhone 13 128Gb Цвет: темная ночь','60000');
Insert into USER2022.PRODUCT_VIEW (ID_PRODUCT_VER,NAME_PRODUCT,PRICE) values ('6','IPhone 11 64Гб Белый','43500');
Insert into USER2022.PRODUCT_VIEW (ID_PRODUCT_VER,NAME_PRODUCT,PRICE) values ('7','Телевизор LED Samsung UE32N4000AUXCE черный','19500');
Insert into USER2022.PRODUCT_VIEW (ID_PRODUCT_VER,NAME_PRODUCT,PRICE) values ('8','Xiaomi Redmi 10 Синий 64Гб','13000');
Insert into USER2022.PRODUCT_VIEW (ID_PRODUCT_VER,NAME_PRODUCT,PRICE) values ('9','Дрель-шуруповерт Bosch UniversalDrill 18V 06039D4000 POWER FOR ALL 18V','5000');
Insert into USER2022.PRODUCT_VIEW (ID_PRODUCT_VER,NAME_PRODUCT,PRICE) values ('10','Холодильник с морозильником Samsung RB30A30N0WW/WT белый','39500');
Insert into USER2022.PRODUCT_VIEW (ID_PRODUCT_VER,NAME_PRODUCT,PRICE) values ('11','11.6" Ноутбук ASUS Laptop 11 E210MA-GJ151T черный','21800');
Insert into USER2022.PRODUCT_VIEW (ID_PRODUCT_VER,NAME_PRODUCT,PRICE) values ('12','IPhone11 64Гб Черный','43000');
