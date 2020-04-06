DELIMITER //

create trigger  RESTRICT_DELETE 
before delete on integrity
for each row

BEGIN 

SIGNAL SQLSTATE '45000' 
SET MESSAGE_TEXT = "Deletion on this table is prohibited.";

END;

