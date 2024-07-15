-- tao database
create database md3_ss02;
-- su dung database
use md3_ss02;
-- tao table color
create table color(
    id int auto_increment primary key,
    name varchar (100),
    status bit
    );
-- tao product
create table product(
    id int auto_increment primary key,
    name varchar (100),
    created date
);
create table size(
    id int auto_increment primary key,
    name varchar (100),
    status bit
);
create table product_detail(
    id int auto_increment primary key,
    product_id int,
    color_id int,
    size_id int,
    price double not null,
    stock int not null,
    status bit not null,
    
    constraint fk_product foreign key(product_id) references product(id),
    constraint fk_color foreign key(color_id) references color(id),
    constraint fk_size foreign key(size_id) references size(id)
    
    
);

show tables;
