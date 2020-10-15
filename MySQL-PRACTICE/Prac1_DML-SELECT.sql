select 고객아이디, 고객이름, 등급 from 고객;

select 고객아이디, 고객이름, 나이, 등급, 직업, 적립금 from 고객;

select * from 고객;

select 제조업체 from 제품;

select all 제조업체 from 제품;

select distinct 제조업체 from 제품;

select 제품명, 단가 as 가격 from 제품;

select 제품명, 단가 + 500 as "조정 단가" from 제품;

select 제품명, 단가 + 500 as '조정 단가' from 제품;

select 제품명, 재고량, 단가
from 제품
where 제조업체 = '한빛제과'; 

select 주문제품, 수량, 주문일자, 주문고객
from 주문
where 주문고객 = 'apple' and 수량 >= 15;


select 주문제품, 수량, 주문일자, 주문고객
from 주문
where 주문고객 = 'apple' or 수량 >= 15;

select 제품명, 단가, 제조업체
from 제품
where 단가 >= 2000 and 단가 <= 3000;

select 고객이름, 나이, 등급, 적립금
from 고객
where 고객이름 like '김%';

select 고객아이디, 고객이름, 등급
from 고객
where 고객아이디 like '_____';

select 고객이름
from 고객
where 나이 is null;

select 고객이름
from 고객
where 나이 is not null;

select 고객이름, 등급, 나이
from 고객
order by 나이 desc;

select 주문고객, 주문제품, 수량, 주문일자
from 주문
where 수량 >= 10
order by 주문제품 asc, 수량 desc;

select avg(단가)
from 제품;

select sum(재고량) as "재고량 합계"
from 제품
where 제조업체 = '한빛제과';

select sum(재고량) as '재고량 합계'
from 제품
where 제조업체 = '한빛제과';

select count(고객아이디) as 고객수
from 고객;

select count(나이) as 고객수
from 고객;

select count(*) as 고객수
from 고객;

select count(distinct 제조업체) as "제조업체 수"
from 제품;

select 주문제품, sum(수량) as 총주문수량
from 주문
group by 주문제품;

select sum(수량) as 총주문수량
from 주문
group by 주문제품;

select 제조업체, count(*) as 제품수, max(단가) as 최고가
from 제품
group by 제조업체;

select 제조업체, count(*) as 제품수, max(단가) as 최고가
from 제품
group by 제조업체 having count(*) >= 3;

select 등급, count(*) as 고객수, avg(적립금) as 평균적립금	
from 고객
group by 등급 having avg(적립금) >= 1000;

select 주문제품, 주문고객, sum(수량) as 총주문수량
from 주문
group by 주문제품, 주문고객;