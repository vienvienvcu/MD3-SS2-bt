use md3_ss02;
create table users(
  id int auto_increment primary key,
  fullName varchar (100),
  email varchar(255),
  password varchar(255),
  phone varchar(11),
  pemission bit,
  status bit
);

create table address (
  id int auto_increment primary key,
  user_id int,
  receiveName varchar(100),
  receiveName varchar(100),
  receivePhone varchar(11),
  isDefault bit,
  constraint fk_users foreign key (user_id) references users(id)
  
);

create table orders (
   id int auto_increment primary key,
   arderAt datetime,
   totals double,
   user_id int,
   status bit,
   constraint fk_users_order foreign key (user_id) references users(id)
);
create table book(
   id int auto_increment primary key,
   name varchar (255),
   price double,
   stock int,
   status bit
);


create table order_detail(
   id int auto_increment primary key,
   orders_id int,
   book_id int,
   quantity int,
   unit_price double,
   constraint fk_orders foreign key (orders_id) references orders(id),
   constraint fk_book foreign key (book_id) references book(id)
);

create table catalog(
   id int auto_increment primary key,
   name varchar(255),
   status bit
);

create table book_catalog(
   catalog_id int,
   book_id int,
   primary key(catalog_id,book_id);
   constraint fk_catalog foreign key (catalog_id) references catalog(id),
   constraint fk_book_cat foreign key (book_id) references book(id)
);

