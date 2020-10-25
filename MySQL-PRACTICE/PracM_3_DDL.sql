create table userTBL(
	아이디 varchar(10) not null,
	이름 varchar(10) not null,
    생년 int not null,
    지역 char(2) not null,
    국번 char(3),
    전화번호 char(8),
    키 int not null,
    가입일 date,
    primary key(아이디)
);

create table buyTBL(
	순번 int not null,
    아이디 varchar(10) not null,
    물품 varchar(10) not null,
    분류 varchar(6),
    단가 int not null,
    수량 int not null,
    primary key(순번),
    foreign key(아이디) references userTBL(아이디)
)