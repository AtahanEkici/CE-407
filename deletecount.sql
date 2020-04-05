DELIMITER //

Create Trigger DELETE_COUNT
AFTER delete ON voter
FOR EACH ROW

BEGIN

UPDATE voter.integrity SET integrity.delete_count = integrity.delete_count +1;

END;