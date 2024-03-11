drop table if exists demo;
create table demo
(
    id   int         not null,
    name varchar(10) not null
);
insert into demo(id, name) values(1, 'Jack Yang'), (2, 'Tom Li');