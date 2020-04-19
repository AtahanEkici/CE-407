DELIMITER //
CREATE TRIGGER AGE_CHECK
BEFORE INSERT ON voter
FOR EACH ROW

BEGIN

DECLARE numLength INT;
SET numLength = NEW.Age;

IF(numLength < 18) THEN
 signal sqlstate '45000' set message_text = 'Your Age is too small to vote';

ELSEIF(numLength > 199) THEN
 signal sqlstate '45000' set message_text = 'You should not be able to live tbh';
END IF;
END;