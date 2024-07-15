use md3_ss02;
create table customer(
   cId int auto_increment primary key,
   cName varchar(100),
   cAge int
);
create table orders (
   o_id int auto_increment primary key,
   c_id int,
   o_date datetime,
   o_totalprice double,
   constraint fk_customer foreign key (c_id)references customer(cId)
);

create table product (
   p_id int auto_increment primary key,
   p_name varchar(255),
   p_price double
);

create table order_detail(
  oid int auto_increment primary key,
  pid int,
  odquantty int,
  constraint fk_orders foreign key(oid)references orders(o_id),
  constraint fk_product foreign key(pid)references product(p_id)
);