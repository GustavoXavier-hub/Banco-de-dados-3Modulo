create database bd3

use database 

create table customer

(id_customer int identity not null,
comp_name varchar (40) not null,
cont_name varchar(30) not null,
cont_title varchar(30) not null,
adress varchar(60) not null,
city varchar(15) not null,
region varchar(15) not null,
postal_code varchar(10)not null,
country varchar(15) not null,
phone varchar(24) not null,
fax varchar(24) not null); 

go

create table orders
(id_customer int identity  not null constraint fk_orders_customers custumer (id_custumer),
order_date datetime not null,
required_date datetime not null,
shipped_date datetime not null,
ship_via int not null,
freigth float (19,4),
shipname varchar(40) not null,
ship_adress varchar (60),
ship_city varchar(15),
ship_region varchar(15),
ship_postal_code varchar(10),
ship_country varchar (15));

create table categories
(cat_id int identity not null,
cat_name varchar (15),
description varchar(30));

create table order_details
(order_id int not null constraint fk_order_details_orders orders (order_id),
prod_id int identity not null constraint fk_02_order_details_ products (id_prod),
unit_price int not null,
quantity int not null,
discount  int not null);

create table products
(prod_id int identity not null,
prod_name varchar(40)not null,
cat_id int identity constraint fk_products_categories  categories (cat_id),
quant_per_unit varchar(20) not null,
unit price float (19,4),
unit_in_stock int not null,
init_in_order int not null,
reorder_level int not null,
discontinued int not null);

insert into customer (comp_name,cont_name,cont_title,adress,city,region,postal_code,country,phone,fax)
values ('etec prof Horacio Augusto da Silveira','Eliane Marion','Coordenadora Informatica','Sao Paulo',02110-010,'Brasil',112905-1128,112906-1125),
       ('E E conego Joao Ligabue','Fabio Gama','Coodenador Unidade','Rua grota n 483', 'Sao Paulo','Sao Paulo',02206-010,'Brasil');

	   alter table customer 

	   where country='Brasil'   
	      
		  update categories

		  set= 
		  where=
delete
from customer
where id_customer=0;