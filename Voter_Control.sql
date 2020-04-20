DELIMITER //
CREATE TRIGGER VOTER_CONTROL
before update on voter
for each row

begin

IF(voter.voter.Is_Voted = 1) THEN 
 signal sqlstate '45000' set message_text = 'This person is already voted can not change credentials';
 END IF;
 END //
