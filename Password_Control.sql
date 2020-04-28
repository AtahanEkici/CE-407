DELIMITER // 
CREATE TRIGGER PASSWORD_CONTROL
BEFORE INSERT ON voter
FOR EACH ROW

BEGIN 
DECLARE numLength INT;
SET numLength = (SELECT CHAR_LENGTH(NEW.Password));

IF(numLength < 8) THEN 
signal sqlstate '45000' set message_text = 'Your password is too short';
END IF;
END; 