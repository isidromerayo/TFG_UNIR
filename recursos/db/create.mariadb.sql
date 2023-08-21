 -- create NEW database
create database tfg_unir;
-- create user
create user 'user_tfg'@'%' identified by 'tfg_un1r_PWD';
-- give all privileges to the user
grant all on tfg_unir.* to 'user_tfg'@'%'; 