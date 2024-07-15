use md3_ss2;
create table users (
  id int auto_increment primary key,
  fullName varchar (100),
  email varchar (255),
  password varchar (255),
  phone varchar(11),
  permission bit,
  status bit
);

create table address(
   id int auto_increment primary key,
   user_id int,
   receiveAddress varchar(100),
   receiveName varchar(100),
   receivePhone varchar(11),
   isDefault bit,
   constraint fk_users_address foreign key (user_id) references users(id)
);

create table orders (
   id int auto_increment primary key,
   orderAd datetime,
   total double,
   user_id int,
   status bit,
   constraint fk_users_orders foreign key (user_id) references users(id)
);
create table catalog(
   id int auto_increment primary key,
   name varchar(100),
   status bit
);
create table product (
   id int auto_increment primary key,
   name varchar (100),
   price double,
   stock int,
   catalog_id int,
   status bit,
   constraint fk_catalog foreign key (catalog_id) references catalog (id)
);
create table orderDetail (
   id int auto_increment primary key,
   order_id int,
   product_id int,
   quantity int,
   unitPrice double,
   constraint fk_orders foreign key (order_id) references orders(id),
   constraint fk_product_order foreign key (product_id) references product(id)
);

create table shoppingCart(
   id int auto_increment primary key,
   users_id int,
   product_id int,
   quantity int,
   constraint fk_user_shoppig foreign key (users_id ) references users(id),
   constraint fk_product_shopping foreign key(product_id) references product(id)
);

create table wishList(
   user_id int,
   product_id int,
   primary key(user_id,product_id),
   constraint fk_user foreign key (user_id) references users(id),
   constraint fk_product foreign key(product_id)references product(id)
   
);
