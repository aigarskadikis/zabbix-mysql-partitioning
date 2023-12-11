#!/bin/bash

# Specify database name
DATABASE=zabbix

# SQL command to maintain partitions
SQLCOMMAND="CALL partition_maintenance_all(\"$DATABASE\");"

# Drop old and create new partitions
mysql \
--defaults-file=/etc/zabbix/zabbix_partitioning.cnf \
--database="$DATABASE" \
--execute="$SQLCOMMAND"
