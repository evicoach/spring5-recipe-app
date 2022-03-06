## use to run mysql db docker image, optional if you are not using a local mysqldb
# docker run --name mysqldb -p 3306:3306 -e MYSQL_ALLOW_EMPTY_PASSWORD=yes -d mysql

# connect to mysql and run as root user
# create database
CREATE DATABASE sfg_dev;
CREATE DATABASE sfg_prod;

# create database service accounts
CREATE USER 'sfg_dev_user'@'localhost' IDENTIFIEDBY 'guru';
CREATE USER 'sfg_prod_user'@'localhost' IDENTIFIEDBY 'guru';
CREATE USER 'sfg_prod_user'@'%' IDENTIFIEDBY 'guru';
CREATE USER 'sfg_prod_user'@'%' IDENTIFIEDBY 'guru';

# database grants
GRANT SELECT ON sfg_dev.* to 'sfg_dev_user'@'localhost';
GRANT INSERT ON sfg_dev.* to 'sfg_dev_user'@'localhost';
GRANT DELETE ON sfg_dev.* to 'sfg_dev_user'@'localhost';
GRANT UPDATE ON sfg_dev.* to 'sfg_dev_user'@'localhost';
GRANT SELECT ON sfg_dev.* to 'sfg_prod_user'@'localhost';
GRANT INSERT ON sfg_dev.* to 'sfg_prod_user'@'localhost';
GRANT DELETE ON sfg_dev.* to 'sfg_prod_user'@'localhost';
GRANT UPDATE ON sfg_dev.* to 'sfg_prod_user'@'localhost';
GRANT SELECT ON sfg_dev.* to 'sfg_dev_user'@'%';
GRANT INSERT ON sfg_dev.* to 'sfg_dev_user'@'%';
GRANT DELETE ON sfg_dev.* to 'sfg_dev_user'@'%';
GRANT UPDATE ON sfg_dev.* to 'sfg_dev_user'@'%';
GRANT SELECT ON sfg_dev.* to 'sfg_prod_user'@'%';
GRANT INSERT ON sfg_dev.* to 'sfg_prod_user'@'%';
GRANT DELETE ON sfg_dev.* to 'sfg_prod_user'@'%';
GRANT UPDATE ON sfg_dev.* to 'sfg_prod_user'@'%';