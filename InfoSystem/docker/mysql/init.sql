create database infosystem;
use infosystem;

create table T_admin
(
    id       int default 1 not null,
    username varchar(20)   null,
    password varchar(40)   null,
    constraint T_admin_id_uindex
        unique (id)
);

alter table T_admin
    add primary key (id);

insert into T_admin values(1, 'admin', '062746e30cf3415dc640490acb5921aa');

create table news
(
    id          int auto_increment,
    title       varchar(20)   null,
    description varchar(1000) null,
    address     varchar(10)   null,
    newsTime    varchar(20)   null,
    createTime  varchar(20)   null,
    constraint table_name_id_uindex
        unique (id)
);

alter table news
    add primary key (id);

