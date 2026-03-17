-- FUNCTIONS:
--    THE FUNCTIONS ARE MAINLY DIVIDED INTO TWO TYPES
--                                                      FUNCTIONS
--                                                         |
--                                                         |
--                               -----------------------------------------------------------
--                               |                                                         |
--                          BUILT_IN FUNCTIONS                                USER DEFINED FUNCTIONS
--                               |
-- 			------------------------------------
--             |                                   |
-- SINGLE ROW FUNCTION                   MULTI ROW FUNCTION
--                                              OR
--                                        AGGRIGATE FUNCTION
--                                              OR
-- 										GROUP FUNCTION
--                                         
--                                         
-- SINGLE ROW FUNCTION:
--      * IT IS A TYPE OF FUNCTION WHICH TAKES N NUMBER OF INPUTS AND GIVES SAME NUMBER OF PUTPUT
--      * SINGLE ROW FUNCTION EXECUTES ROW BY ROW
--      
-- MULTI ROW FUNCTION:
--      * IT IS A FUNCTION WHICH TAKES N NUMBER OF INPUTS AND GIVE A SINGLE OUTPUT
--      * MULTI ROW FUNCTION EXECUTES GROUP BY GROUP
--      
--      THE MULTI ROW FUNCTIONS ARE:
--       MAX()
--       MIN()
--       SUM()
--       AVG()
--       COUNT()


-- WAQTD MAXIMUM SALARY PAID TO THE EMPLOYEE
USE EMPLOYEE;
SELECT MAX(SAL)
FROM EMP;

-- WAQTD MAXIMUM SALARY MINIMUM SALARY AND TOTAL SALARY PAID TO THE EMPLOYEE
SELECT MAX(SAL),MIN(SAL),SUM(SAL)
FROM EMP;

-- WAQTD NUMBER OF DISTINCT SALARY PRESENT IN EMP TABLE
SELECT COUNT(distinct SAL)
FROM EMP;

-- WAQTD NO.OF JOBS PRESENT IN EMP TABLE
SELECT COUNT( DISTINCT JOB)
FROM EMP;
