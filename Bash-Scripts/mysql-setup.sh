#!/bin/bash

MYSQL_ROOT_PASSWORD="YOUR_ROOT_PASS"
MYSQL_DB_NAME="YOUR_DB_NAME"
MYSQL_USER="USER_NAME"
MYSQL_PASSWORD="USER_PASSWORD"

apt update && apt install mysql-server -y

sudo mysql -u root -p"$MYSQL_ROOT_PASSWORD" <<MYSQL_SCRIPT
SET GLOBAL time_zone = '+05:30';
CREATE DATABASE IF NOT EXISTS $MYSQL_DB_NAME;
CREATE USER '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';
GRANT ALL PRIVILEGES ON $MYSQL_DB_NAME.* TO '$MYSQL_USER'@'%';
FLUSH PRIVILEGES;
MYSQL_SCRIPT

sed -i 's/^bind-address\s*=.*/bind-address = PRIVATE_IP_OF_EC2/' /etc/mysql/mysql.conf.d/mysqld.cnf

service mysql restart

echo "MySQL installation, user privilege setup, and timezone configuration completed."