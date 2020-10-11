select 'hello sql';
create database testdb; #DB 생성
create user testid@localhost identified by 'testpassword'; #유저 생성
grant all privileges on testdb.* to testid@localhost; #모든 권한 부여;	
commit;