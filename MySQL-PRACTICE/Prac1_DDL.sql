create table 고객(
	고객아이디 varchar(20) not null,
    나이 int,
    등급 varchar(10) not null,
    직업 varchar(20),
    적립금 int default 0,
    primary key(고객아이디)
);

create table 제품(
	제품번호 char(3) not null,
    제품명 varchar(20),
    재고량 int,
    단가 int,
    제조업체 varchar(20),
    primary key(제품번호),
	check(재고량 >= 0 and 재고량 <= 10000)
);

create table 주문(
	주문번호 char(3) not null,
    주문고객 varchar(20),
    주문제품 char(3),
    수량 int,
    배송지 varchar(30),
    주문일자 date,
    primary key(주문번호),
    foreign key(주문고객) references 고객(고객아이디),
    foreign key(주문제품) references 제품(제품번호)
);

create table 배송업체(
	업체번호 char(3) not null,
    업체병 varchar(20),
    주소 varchar(100),
    전화번호 varchar(20),
    primary key(업체번호)
);

alter table 고객 add 가입날짜 date;
alter table 고객 drop column 가입날짜;
alter table 고객 add constraint CHK_AGE check(나이 >= 20);
alter table 고객 drop constraint CHK_AGE;

drop table 배송업체;
-- drop table 고객;