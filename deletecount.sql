DELIMITER //

Create Trigger DELETE_COUNT
AFTER delete ON voter
FOR EACH ROW

BEGIN

UPDATE integrity.Delete_Count SET integrity.Delete_Count = integrity.Delete_Count +1;

END;