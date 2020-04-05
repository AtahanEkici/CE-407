delimiter //

CREATE TRIGGER ID_CONTROL BEFORE INSERT ON voter
 FOR EACH ROW 
 BEGIN

   DECLARE numLength INT;
   SET numLength = (SELECT LENGTH(NEW.citizen_id));

   IF(numLength > 11) THEN
    signal sqlstate '45000' set message_text = 'Citizen ID requres 11 characters check your ID';
   END IF;
END;