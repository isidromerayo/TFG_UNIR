-- create NEW database
CREATE DATABASE IF NOT EXISTS tfg_unir;
-- create user
CREATE USER IF NOT EXISTS 'user_tfg'@'%' IDENTIFIED BY 'tfg_un1r_PWD';
-- give all privileges to the user
GRANT ALL PRIVILEGES ON tfg_unir.* TO 'user_tfg'@'%';
-- apply changes
FLUSH PRIVILEGES;