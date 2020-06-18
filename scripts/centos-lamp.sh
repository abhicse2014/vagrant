#!/bin/bash

#update centos with any patches
yum update -y --exclude=kernel

#Tools
yum install -y nano git unzip screen

#Apache
yum install -y httpd httpd-dvel httpd-tools
chkconfig --add httpd
chkconfig httpd on
service httpd stop

rm -rf /var/ww/html
ln -s /vagrant /var/www/html

service httpd start


#PHP

yum install -y php php-cli php-common php-devel php-mysql

#MYSQL

yum install -y mysql mysql-server mysel-devel
chkconfig --add mysqld
chkconfig mysqld on

service mysqld start

mysql -u root -e "show databases"

#Download starter content

service httpd restart

