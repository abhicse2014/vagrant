#!/bin/bash
#MYSQL

yum install -y mysql mysql-server mysel-devel
chkconfig --add mysqld
chkconfig mysqld on

service mysqld start

mysql -u root -e "show databases"

