create database `java1_test_db`;
create user 'java1_test'@'%' identified by '1234';
grant all privileges on `java1_test_db`.* to 'java1_test'@'%';
flush privileges;



