DELIMITER //

CREATE TRIGGER ID_CONTROL BEFORE INSERT ON voter
 FOR EACH ROW 
 BEGIN

   DECLARE numLength INT;
   SET numLength = (SELECT CHAR_LENGTH(NEW.citizen_id));

   IF(numLength > 12) THEN
    signal sqlstate '45000' set message_text = 'Citizen ID requres 11 characters check your ID (too much characters)';
    
    ELSEIF(numLength < 10) THEN
    signal sqlstate '45000' set message_text = 'Citizen ID requres 11 characters check your ID(too less characters)';
    
   END IF;
   
END;
