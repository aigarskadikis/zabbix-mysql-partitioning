#!/bin/bash
# (auth is in ~/.my.cnf)

command="CALL partition_maintenance_all('zabbix');"

# perform partition maintenance to drop all rolloff data
mysql zabbix -e "$command"
