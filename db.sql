# db 생성
drop database if exists todoapp_2022_05_25;
create database todoapp_2022_05_25;
use todoapp_2022_05_25;

# 테이블 생성
create table todo(
	id int unsigned not null primary key auto_increment,
	reg_date datetime not null,
	update_date datetime not null,
	user_code  char(50) not null,
	`no` int unsigned not null,
	content varchar(200) not null,
	perform_date datetime not null,
	is_competed tinyint unsigned not null default 0
);

# 테스트 데이터 생성
insert into todo
set reg_date = now(),
update_date = now(),
user_code = 'localhost',
`no` = 1,
content = '기상',
perform_date = now();

select * from todo;

# 테스트 데이터 생성
insert into todo
set reg_date = now(),
update_date = now(),
user_code = 'localhost',
`no` = 2,
content = '조깅',
perform_date = now();

alter table todo add unique index(user_code, `no`);

select * from todo;

# 테스트 데이터 생성
insert into todo
set reg_date = now(),
update_date = now(),
user_code = 'yeonji',
`no` = 2,
content = '아침식사',
perform_date = now();

select * from todo;
