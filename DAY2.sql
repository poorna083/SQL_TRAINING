-- DATA QUERY LANGUAGE(DQL):-
-- it is used to retrive or fetch data from the database
-- 						Data querary language:
--                         *select
--                         *projection
--                         *selection
--                         *joins

-- 					PROJECTION
-- syntex:
-- SELECT [DISTINCT] COL_NAMES/EXPRESSIONS [ALIAS] / *
-- FROM TABLE_NAME;

-- ORDER OF EXECUTION:
-- FROM
-- SELECT



							-- QUESTIONS
-- WAQTD NAME AND JOB OF ALL THE EMPLOYEES

use employee;
select ename, job
from emp;

-- WAQTD DETAILS OF ALL THE EMPLOYEES

select * from emp;

-- WAQTD NAME,JOB,HIREDATE FROM EMP
select ename,job,hiredate
from emp;
