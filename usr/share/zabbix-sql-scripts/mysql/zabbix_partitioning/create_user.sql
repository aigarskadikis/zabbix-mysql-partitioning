SET GLOBAL validate_password.LENGTH = 4;
SET GLOBAL validate_password.policy = 0;
SET GLOBAL validate_password.mixed_case_count = 0;
SET GLOBAL validate_password.number_count = 0;
SET GLOBAL validate_password.special_char_count = 0;
SET GLOBAL validate_password.check_user_name = 0;
DROP USER IF EXISTS 'zbx_part'@'127.0.0.1';
CREATE USER 'zbx_part'@'127.0.0.1' IDENTIFIED WITH mysql_native_password BY 'hF21QfomW4jkSgLciASuE0rs';
GRANT SELECT, ALTER, DROP ON zabbix.history TO 'zbx_part'@'127.0.0.1';
GRANT SELECT, ALTER, DROP ON zabbix.history_uint TO 'zbx_part'@'127.0.0.1';
GRANT SELECT, ALTER, DROP ON zabbix.history_str TO 'zbx_part'@'127.0.0.1';
GRANT SELECT, ALTER, DROP ON zabbix.history_text TO 'zbx_part'@'127.0.0.1';
GRANT SELECT, ALTER, DROP ON zabbix.history_log TO 'zbx_part'@'127.0.0.1';
GRANT SELECT, ALTER, DROP ON zabbix.trends TO 'zbx_part'@'127.0.0.1';
GRANT SELECT, ALTER, DROP ON zabbix.trends_uint TO 'zbx_part'@'127.0.0.1';
GRANT SELECT ON zabbix.dbversion TO 'zbx_part'@'127.0.0.1';
GRANT SELECT,DELETE ON zabbix.housekeeper TO 'zbx_part'@'127.0.0.1';
FLUSH PRIVILEGES;

