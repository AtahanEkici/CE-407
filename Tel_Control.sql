DELIMITER  $$
CREATE TRIGGER TEL_Control
BEFORE INSERT ON voter
FOR EACH ROW

BEGIN 

DECLARE numLength INT;
SET numLength = (SELECT CHAR_LENGTH(NEW.Tel_num));

IF(numLength > 10) THEN
 signal sqlstate '45000' set message_text = 'Your telephone number *should not be* MORE than 10 digits';

ELSEIF(numLength < 10) THEN
 signal sqlstate '45000' set message_text = 'Your telephone number *should not be* LESS than 10 digits';
END IF;

END $$