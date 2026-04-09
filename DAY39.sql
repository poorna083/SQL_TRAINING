USE QSP;
CREATE TABLE DEMO(
SLNO numeric(5) primary KEY,
NAME character(30) unique NOT NULL
);
INSERT INTO DEMO VALUES(1,'POORNA');
INSERT INTO DEMO VALUES(2,'DHASWANTH');
INSERT INTO DEMO VALUES(3,'PRAKASH');

-- DELETE:
--   THIS STATEMENT IS USED TO REMOVE SPECIFIC RECORDS (OR) ALL THE RECORDS FROM THE TABLE
--   
--   SYNTAX:
--     DELETE FROM TAB_NAME
--     [WHERE FILTER_CONDITION]
--     
    delete FROM DEMO
    WHERE SLNO = 1;
    
    delete FROM DEMO;
    
    
-- TRANSCATION CONTROL LANGUAGE:
-- IT IS USED TO CONTROL THE TRANCACTIONS LIKE INSERT, UPDATE AND DELETE
-- IN THESE WE HAVE THREE SUBSTATEMENTS
   --  *CUMMIT
--     *ROLLBACK
--     *SAVEPOINT

--  *CUMMIT
-- THIS STATEMENT IS USED TO SAVE THE TRANCATIONS PERMENETLY
INSERT INTO DEMO VALUES(1,'POORNA');
commit;
-- *ROLLBACK
-- THIS STATEMENT IS USED TO GO BACK TO THE last cummitted
rollback;
select * from demo;
-- *SAVEPOINT
insert into demo values(2,'chandra');
savepoint s1;
insert into demo values(3,'kavin');
savepoint s2;
insert into demo values(4,'prakash');
savepoint s3;

select * from demo;

rollback s3;
rollback s2;
rollback s1;
rollback;



-- data control language:
--    this is used to control the downflow between two users

-- GRANT:
--    THIS STATEMENT IS USED TO GIVE PERMISSION TO A USER TO ACCESS THE DATA
--    
--    SYNTAX:
--       GRANT SOL_STATEMENT
--       ON    TAB_NAME
--       TO  USER_NAME;
--       
-- REVOKE:
--    THIS STATEMENT IS USED TO TAKE BACK THE GIVEN PERMISSION FROM A USER
--    
--    SYNTAX:
--       REVOKE SOL_STATEMENT
--       ON    TAB_NAME
--       TO  USER_NAME;




   
   
