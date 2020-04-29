DELIMITER //
CREATE TRIGGER PASSWORD_CONTROL_UPDATE
AFTER UPDATE ON voter
FOR EACH ROW

BEGIN

DECLARE numLenght INT;
SET numLenght = (SELECT char_length(NEW.Password));

IF(numLenght < 8) THEN
signal sqlstate '45000' set message_text = 'Your password is too short';
END IF;
END; 
