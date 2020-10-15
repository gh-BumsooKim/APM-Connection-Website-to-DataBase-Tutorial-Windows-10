insert into 고객 values ('apple', '정소화', 20, 'gold', '학생', 1000);
insert into 고객 values ('banana', '김선우', 25, 'vip', '간호사', 2500);
insert into 고객 values ('carrot', '고명석', 28, 'gold', '교사', 4500);
insert into 고객 values ('orange', '김용욱', 22, 'silver', '학생', 0);
insert into 고객 values ('melon', '성원용', 35, 'gold', '회사원', 5000);
insert into 고객 values ('peach', '오형준', null, 'silver', '의사', 300);
insert into 고객 values ('pear', '채광주', 31, 'silver', '회사원', 500);

insert into 제품 values ('p01', '그냥만두', 5000, 4500, '대한식품');
insert into 제품 values ('p02', '매운쫄면', 2500, 5500, '민국푸드');
insert into 제품 values ('p03', '쿵떡파이', 3600, 2600, '한빛제과');
insert into 제품 values ('p04', '맛난초콜릿', 1250, 2500, '한빛제과');
insert into 제품 values ('p05', '얼큰라면', 2200, 1200, '대한식품');
insert into 제품 values ('p06', '통통우동', 1000, 1550, '민국푸드');
insert into 제품 values ('p07', '달콤비스킷', 1650, 1500, '한빛제과');
 
insert into 주문 values ('o01', 'apple', 'p03', 10, '서울시 마포구', '19/01/01');
insert into 주문 values ('o02', 'melon', 'p01', 5, '인천시 계양구', '19/01/10');
insert into 주문 values ('o03', 'banana', 'p06', 45, '경기도 부천시', '19/01/11');
insert into 주문 values ('o04', 'carrot', 'p02', 8, '부산시 금정구', '19/02/01');
insert into 주문 values ('o05', 'melon', 'p06', 36, '경기도 용인시', '19/02/20');
insert into 주문 values ('o06', 'banana', 'p01', 19, '충청북도 보은군', '19/03/02');
insert into 주문 values ('o07', 'apple', 'p03', 22, '서울시 영등포구', '19/03/15');
insert into 주문 values ('o08', 'pear', 'p02', 50, '강원도 춘천시', '19/04/10');
insert into 주문 values ('o09', 'banana', 'p04', 15, '전라남도 목포시', '19/04/11');
insert into 주문 values ('o10', 'carrot', 'p03', 20, '경기도 안양시', '19/05/22');
 
select * from 고객;
select * from 제품;
select * from 주문;

