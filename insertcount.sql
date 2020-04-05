DELIMITER //

Create Trigger INSERT_COUNT
AFTER INSERT ON voters
FOR EACH ROW

BEGIN

UPDATE integrity.Add_Count SET integrity.Add_Count = integrity.Add_Count +1;

END;