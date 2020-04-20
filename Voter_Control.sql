DELIMITER //
CREATE TRIGGER VOTER_CONTROL
BEFORE UPDATE ON voter
FOR EACH ROW

BEGIN

IF((SELECT voter.Is_Voted FROM voter WHERE ID = NEW.ID) IS TRUE) THEN 
 signal sqlstate '45000' set message_text = 'This person is already voted can not change credentials';
 END IF;
 END //
