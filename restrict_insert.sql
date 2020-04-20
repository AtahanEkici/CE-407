DELIMITER //
create trigger RESTRICT_INSERT 
before insert on integrity 
for each row  

BEGIN  
SIGNAL SQLSTATE '45000'  SET MESSAGE_TEXT = "insertion is prohibited in this  table";  
END;
