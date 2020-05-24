DELIMITER //

CREATE PROCEDURE Percentage( IN vot varchar(200))
READS SQL DATA
BEGIN

DECLARE percentage FLOAT;
DECLARE Total_Vote INT;
DECLARE Particular_vote INT;
DECLARE candidate varchar(200);
DECLARE no_more_rows BOOLEAN;

DECLARE cur  CURSOR FOR
SELECT COUNT(candidate.Vote_Count),candidate.Vote_Count,candidate.Name FROM candidate;

DECLARE CONTINUE HANDLER FOR NOT FOUND
SET no_more_rows = TRUE;  

OPEN cur;

read_loop:LOOP
FETCH cur INTO Total_Vote,Particular_vote,candidate;

IF no_more_rows THEN 
  LEAVE read_loop;   
  END IF;
  
IF(candidate = vot ) THEN SET percentage = ( Particular_vote / Total_Vote ) * 100;
END IF;

END LOOP;
CLOSE cur;

SELECT percentage;

END; //