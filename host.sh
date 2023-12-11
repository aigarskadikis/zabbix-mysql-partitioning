#!/bin/bash

if [ -z "$1" ]
then
HOST=127.0.0.1
else
HOST=$1
fi

sed -i "s|^host=.*|host=$HOST|" etc/zabbix/zabbix_partitioning.cnf

sed "s|'@'[^']\+'|'@'"$HOST"'|" usr/share/zabbix-sql-scripts/mysql/zabbix_partitioning/create_user.sql | grep zbx_part

echo "New characteristics how script will contact database:"
cat etc/zabbix/zabbix_partitioning.cnf

#grep zbx_part usr/share/zabbix-sql-scripts/mysql/zabbix_partitioning/create_user.sql

