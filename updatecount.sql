DELIMITER //

Create Trigger UPDATE_COUNT
AFTER update ON voter
FOR EACH ROW

BEGIN

UPDATE voter.integrity SET integrity.update_count = integrity.update_count + 1;

END;