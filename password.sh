#!/bin/bash
PASSWORD=$(< /dev/urandom tr -dc A-Za-z0-9 | head -c${1:-24};echo;)
echo "$PASSWORD"
sed -i "s|^password=.*|password=$PASSWORD|" etc/zabbix/zabbix_partitioning.cnf

echo "New characteristics how script will contact database:"
cat etc/zabbix/zabbix_partitioning.cnf

sed -i "s|mysql_native_password BY.*|mysql_native_password BY '"$PASSWORD"';|" usr/share/zabbix-sql-scripts/mysql/zabbix_partitioning/create_user.sql

grep BY usr/share/zabbix-sql-scripts/mysql/zabbix_partitioning/create_user.sql


