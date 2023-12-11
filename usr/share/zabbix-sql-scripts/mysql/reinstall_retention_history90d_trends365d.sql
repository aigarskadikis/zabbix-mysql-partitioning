DROP PROCEDURE partition_maintenance_all;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `partition_maintenance_all`(SCHEMA_NAME VARCHAR(32))
BEGIN
CALL partition_maintenance(SCHEMA_NAME, 'history', 30, 24, 2);
CALL partition_maintenance(SCHEMA_NAME, 'history_log', 30, 24, 2);
CALL partition_maintenance(SCHEMA_NAME, 'history_str', 30, 24, 2);
CALL partition_maintenance(SCHEMA_NAME, 'history_text', 30, 24, 2);
CALL partition_maintenance(SCHEMA_NAME, 'history_uint', 30, 24, 2);
CALL partition_maintenance(SCHEMA_NAME, 'trends', 365, 24, 2);
CALL partition_maintenance(SCHEMA_NAME, 'trends_uint', 365, 24, 2);
END ;;
DELIMITER ;
