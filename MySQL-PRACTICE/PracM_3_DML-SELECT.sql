

-- 모든 데이터에 대해서 아이디, 이름, 전화번호, 가입일 속성을 검색
select 아이디, 이름, 전화번호, 가입일 from userTBL;

-- 키 170 이상인 경우 아이디, 이름, 키 속성 검색
select 아이디, 이름, 키 from userTBL
where 키 >= 170;

-- 전화번호가 null이 아닌 경우 이름, 생년, 지역 속성 검색
select 이름, 생년, 지역 from userTBL
where 전화번호 is not null;

-- 생년을 오름차순으로 정렬해서 이름, 생년, 지역, 전화번호 속성을 검색
select 이름, 생년, 지역, 전화번호 from userTBL
order by 생년 asc;

-- 생년을 먼저 오름차순으로 정렬하고, 같은 생년에서는 가입일을 내림차순으로 정렬하여 이름, 생년, 가입일 속성을 검색
select 이름, 생년, 가입일 from userTBL
order by 생년 asc, 가입일 desc;

-- null 값이 아닌 이름의 개수를 회원수 속성으로 이름을 변경하여 검색
select count(이름) as 회원수 from userTBL;

-- 아이디를 기준으로 그룹하여 단가와 수량을 곱한 값을 모두 합하여 구매총합 속성으로 이름을 변경하여 검색
select 아이디, sum(단가*수량) as 구매총합 from buyTBL
group by 아이디;

-- 분류 속성이 전자인 경우 아이디, 분류 속성을 검색
select 아이디, 분류 from buyTBL
where 분류 = '전자';

-- 아이디를 기준으로 그룹하여 아이디와 구매한 물품의 종류를 구매 종류 속성으로 이름을 변경하여 검색
select 아이디, count(물품) as 구매제품종류 from buyTBL
group by 아이디;	

-- 아이디를 기준으로 물품을 2개 종류 이상 구매한 경우만 물품 속성을 구매 제품 종류 속성으로 이름을 변경하여 검색
select 아이디, count(물품) as 구매제품종류 from buyTBL
group by 아이디 having count(물품) >= 2;

-- 총 구매량(단가와 수량을 곱한 값)이 1000이 넘는 경우 아이디를 기준으로 그룹하여 아이디와 단가*수량을 모두 합한 값을 구매총합 속성으로 이름을 변경하여 검색
select 아이디, sum(단가*수량) as 구매총합 from buyTBL
group by 아이디 having sum(단가*수량) >= 1000;