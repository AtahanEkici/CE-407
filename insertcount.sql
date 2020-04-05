DELIMITER //

Create Trigger INSERT_COUNT
AFTER INSERT ON voter
FOR EACH ROW

BEGIN

UPDATE voter.integrity SET integrity.insert_count = integrity.insert_count + 1;

END;