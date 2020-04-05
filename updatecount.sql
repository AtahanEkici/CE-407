DELIMITER //

Create Trigger UPDATE_COUNT
AFTER update ON voter
FOR EACH ROW

BEGIN

UPDATE integrity.Upd_Count SET integrity.Upd_Count = integrity.Upd_Count +1;

END;