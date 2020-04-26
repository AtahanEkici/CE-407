DELIMITER  //
CREATE TRIGGER TEL_Control_INSERT
BEFORE INSERT ON voter
FOR EACH ROW

BEGIN 

DECLARE numLength INT;
SET numLength = (SELECT CHAR_LENGTH(NEW.Tel_num));

IF(numLength <> 10) THEN
  signal sqlstate '45000' set message_text = 'Your telephone number should be 10 characters';
END IF;
END; 
