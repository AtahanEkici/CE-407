DELIMITER //
CREATE TRIGGER VOTER_CONTROL
before update on voter
for each row

begin

IF(Is_Voted = TRUE) THEN 
 signal sqlstate '45000' set message_text = 'This person is already voted can not change credentials';
 END IF;
 
 END; 