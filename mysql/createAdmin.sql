CREATE USER 'TestUSER'@'%' IDENTIFIED WITH mysql_native_password BY '1234' ;
GRANT ALL PRIVILEGES ON *.* TO 'TestUSER'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;

-- Create Admin User  
-- In root