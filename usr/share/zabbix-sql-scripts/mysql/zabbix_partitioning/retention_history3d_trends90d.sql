DROP PROCEDURE partition_maintenance_all;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `partition_maintenance_all`(SCHEMA_NAME VARCHAR(32))
BEGIN
CALL partition_maintenance(SCHEMA_NAME, 'history', 3, 24, 2);
CALL partition_maintenance(SCHEMA_NAME, 'history_log', 3, 24, 2);
CALL partition_maintenance(SCHEMA_NAME, 'history_str', 3, 24, 2);
CALL partition_maintenance(SCHEMA_NAME, 'history_text', 3, 24, 2);
CALL partition_maintenance(SCHEMA_NAME, 'history_uint', 3, 24, 2);
CALL partition_maintenance(SCHEMA_NAME, 'trends', 90, 24, 2);
CALL partition_maintenance(SCHEMA_NAME, 'trends_uint', 90, 24, 2);
END ;;
DELIMITER ;
