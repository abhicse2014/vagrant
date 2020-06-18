#!/bin/bash
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


#Download starter content
cd /c/temp/shellclass/vagrant

sudo -u vagrant wget -q https://raw.githubusercontent.com/abhicse2014/vagrant/master/files/index.html

sudo -u vagrant wget -q https://raw.githubusercontent.com/abhicse2014/vagrant/master/files/info.php

service httpd restart

