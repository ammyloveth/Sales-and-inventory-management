create database sales_inventory_system;
use sales_inventory_system;
create table customers_table(
customer_id int primary key auto_increment,
first_name varchar(30) not null,
last_name varchar(30) not null, 
email varchar(30),
phone varchar(50),
city varchar(50));

select * from customers_table

create table suppliers_table(
supplier_id int primary key auto_increment,
supplier_name varchar(50) not null,
contact_email varchar(50));


create table products(
product_id int primary key auto_increment,
product_name varchar(50)not null,
category varchar(50),
price decimal(10,2),
supplier_id int,
foreign key (supplier_id) references suppliers_table(supplier_id));


create table orders(
order_id int primary key auto_increment,
customer_id int,
order_date date,
foreign key (customer_id) references customers_table(customer_id));


create table order_details(
order_detail_id int primary key auto_increment,
order_id int,
product_id int,
quantity int,
foreign key (order_id) references orders (order_id),
foreign key (product_id) references products(product_id));


