DELIMITER //

CREATE PROCEDURE IfVoted(IN voter_id varchar(11))
READS SQL DATA
BEGIN

DECLARE id varchar(11);
DECLARE User_n varchar (200);
DECLARE Is_Voted BOOLEAN;
DECLARE temp BOOLEAN;
DECLARE no_more_rows BOOLEAN; 

DECLARE cur CURSOR FOR 
SELECT DISTINCT voter.ID,voter.Is_Voted FROM voter WHERE voter_id = voter.ID;

DECLARE CONTINUE HANDLER FOR NOT FOUND
SET no_more_rows = TRUE;  

OPEN cur;

read_loop: LOOP
 
FETCH cur INTO id,temp;

IF(no_more_rows = TRUE) THEN LEAVE read_loop;
 END IF;
 
 IF(voter_id = id) THEN SET Is_Voted = temp;
END IF;

END LOOP;

CLOSE cur;

SELECT Is_Voted;

END; //