-- SUBQUERRY:
--       A QUERRY WRITTEN INSIDE A QUERRY IS KNOWN AS SUBQUERRY
--       
--       
-- TOTAL_OUTPUT<--- OUTERQUERRY  I/P
-- 						         \
--                                   \ 1/2 O/P<-----INNERQUERRY <-----INPUT
-- 								
-- working primciple of subqueray!
-- Here we have two querrys- Taey ane
-- * Outer querry
-- * Inner querry
-- between these two querrys innerquerry always executes first, it takes input from the user execute and give half of the autput :
-- the output of innerquerry is given as input to the outerquerry.
-- using this input aterguerry execautes and grve finaloutput.
-- touterquerry is completly dependent- on innerquerry.
-- when and why touse a sobquerry?.
-- Casel: Whenever there is an unknown value present in the question,
-- to find that unknown valver we use subajerry.
-- Case2: whenever the data to be display and condition to be executed aY
-- present in different tables we use subquerry.

-- WAQTD Display name of Employes worKing in same DEPT OF
-- WARD
USE EMPLOYEE;
SELECT ENAME,DEPTNO
FROM EMP
WHERE DEPTNO = (SELECT DEPTNO 
				FROM EMP
                WHERE ENAME = 'WARD');
                
--  WAQTD Display name of Employes worKing in same DESIGNATION OF
--  SCOTT  
SELECT ENAME,JOB
FROM EMP
WHERE JOB = (SELECT JOB
             FROM EMP
             WHERE ENAME = 'SCOTT');
             
--  waqtd details of employees earning comm more than smith salary

SELECT *
FROM EMP
WHERE COMM > (SELECT SAL
				FROM EMP
                WHERE ENAME = 'SMITH');
                
-- Note:
-- * We can use different colomn cors same colume in the
-- SELECT elause of subquerry. but, the datatype should be sare
-- as the colomn used in outerquerrys WHERE clause.
-- & subquerry must give a single column as output.

-- WAQTD name, sal and Deptno of employees worKing in the
-- Same dept of king and earning salary more than 1500
select ENAME,SAL,DEPTNO
FROM EMP
WHERE DEPTNO = (SELECT DEPTNO
				FROM EMP
                WHERE ENAME = 'KING') AND SAL > 1500;
                
-- WAQTD details of employees earning salary more than Allen in Dept10
SELECT *
FROM EMP
WHERE SAL > (SELECT SAL
			FROM EMP
            WHERE ENAME = 'ALLEN' )AND DEPTNO = 10;
            
-- WARTD details of employes who are earning salary more than Allen
-- and higherd before ScOTT
SELECT *
FROM EMP
WHERE SAL > (SELECT SAL
			FROM EMP
            WHERE ENAME = 'ALLEN') AND HIREDATE < (SELECT HIREDATE
													FROM EMP
                                                    WHERE ENAME = 'SCOTT');
                                                    
-- WAQTD DETAILS OF MANAGER HIRED AFTER SMITH AND BEFORE SCOTT
SELECT *
FROM EMP
WHERE JOB = 'MANAGER'
AND HIREDATE BETWEEN 
    (SELECT HIREDATE FROM EMP WHERE ENAME = 'SMITH')
AND 
    (SELECT HIREDATE FROM EMP WHERE ENAME = 'SCOTT');
										
 
