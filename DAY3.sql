-- EXPRESSION:-
-- 		It is a combination of operants and the operator which gives result.
--         we can perform expression in two ways. they are :
--             -> col_name operator value -----> statement
--             -> col_name operator col_name -----> Expression
-- Note:
-- 		wherever we are using colums along with operator the data types of col should be same
--             operator      
--                |     
-- 			sal*12          =        9600
--             \    /                    |                  } Expression 
--              \  /                     |
--            operands                 Result

-- WAQTD ANNUAL SALARY OF ALL THE EMPLOYEES
use employee;
select sal * 12
from emp;

-- WAQTD EMP NAME AND QUATAR SALARY OF ALL THE EMPLOYEES
SELECT ENAME, SAL*3
FROM EMP;

-- WAQTD ENAME, JOB, HIREDATE , SAL WITH INCREMENT OF 50
SELECT ENAME,JOB,HIREDATE,SAL+50
FROM EMP;

-- WAQTD ENAME, SAL WITH 10% HIKE

SELECT ENAME, SAL+SAL/10
FROM EMP;

-- WAQTD ENAME, SAL WITH 25% DETECTION 
SELECT ENAME,SAL-SAL/25
FROM EMP;

-- WAQTD ENAME, ANNUALSALARY,ANNUALSALARY WITH HIKE 5%
SELECT ENAME, SAL*12 , SAL*12+SAL*12/5
FROM EMP;