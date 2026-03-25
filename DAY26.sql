-- ASSIGNMENT ON NESTED SUB QUERY:


-- 61.WAQTD 2ND MINIMUM SALARY
USE EMPLOYEE;
select MAX(SAL)
FROM EMP
WHERE SAL < (SELECT MAX(SAL)
			FROM EMP);
-- 62.WAQTD 5TH MAXIMUM SALARY
select MAX(SAL)
FROM EMP
WHERE SAL < (select MAX(SAL)
			FROM EMP
			WHERE SAL<(select MAX(SAL)
			           FROM EMP
			            WHERE SAL<(select MAX(SAL)
			                       FROM EMP
			                       WHERE SAL<(select MAX(SAL)
											FROM EMP))));
-- 63.W AQTD NAME OF THE EMPLOYEE EARNING 3RD
-- MAXIMUM SALARY
SELECT ENAME 
FROM EMP
WHERE SAL IN(SELECT MAX(SAL)
			FROM EMP
            WHERE SAL<(SELECT MAX(SAL)
						FROM EMP
                        WHERE SAL <(SELECT MAX(SAL)
									FROM EMP)));
-- 64.WAOTD EMPNO OF THE EMPLOYEE EARNING 2D
-- MAXIMUM SALARY
SELECT EMPNO 
FROM EMP
WHERE SAL IN(SELECT MAX(SAL)
			FROM emp
            WHERE SAL <(SELECT MAX(SAL)
						FROM EMP));
-- 65.WAQTD DEPARTMENT NAME OF AN EMPLOYEE GETTING
-- 4TH MAX SAL
SELECT DNAME
FROM department.DEPT
WHERE DEPTNO = (SELECT DEPTNO
                FROM EMP
                WHERE SAL = (SELECT MAX(SAL)
                             FROM EMP
                             WHERE SAL < (SELECT MAX(SAL)
                                          FROM EMP
                                          WHERE SAL < (SELECT MAX(SAL)
                                                      FROM EMP
                                                      WHERE SAL < (SELECT MAX(SAL)
                                                                   FROM EMP)))));
				
-- -66.WAQTD DETAILS OF THE EMPLOYEE WHO WAS HIRED 2nd
SELECT *
from emp
where HIREDATE in(select MAX(HIREDATE) 
				 FROM EMP
                 WHERE HIREDATE < (SELECT MAX(HIREDATE)
                                   FROM EMP));
-- 67.WaQTD NaME oF thE eMPLoYEE HIRED BEFORE THE
-- LAST EMPLOYEE
SELECT ENAME 
FROM EMP
WHERE HIREDATE IN(SELECT MIN(HIREDATE)
				FROM EMP
                WHERE HIREDATE > (select MIN(HIREDATE)
                                 FROM EMP));
-- 68.WaQTD LOC OF THE EMPLoyEE WHO WAS HIRED FIRST
SELECT LOC
FROM department.DEPT
WHERE DEPTNO IN(SELECT DEPTNO
				FROM EMP
                WHERE HIREDATE =(SELECT MAX(HIREDATE) 
                                 FROM EMP));
-- 69.WAQTD DETAILS OF THE EMPLOYEE EARNING 7TH
-- MINIMUM SALARY
SELECT *
FROM EMP
WHERE SAL>(SELECT MIN(SAL)
           FROM EMP
           WHERE SAL >(SELECT MIN(SAL)
                       FROM EMP
					WHERE SAL >(SELECT MIN(SAL)
                               FROM EMP
                                WHERE SAL >(SELECT MIN(SAL)
                                            FROM EMP
                                           WHERE SAL >(SELECT MIN(SAL)
                                                       FROM EMP
                                                       WHERE SAL >(SELECT MIN(SAL)
																   FROM EMP))))));
            
-- 70.WAQTD DNAME OF EMPLOYEE GETTING 2ND MAXIMUM
-- SALARY
SELECT DNAME
FROM department.DEPT
WHERE DEPTNO = (SELECT DEPTNO
				FROM emp
                WHERE HIREDATE = (SELECT MAX(HIREDATE)
                                  FROM EMP
                                  WHERE HIREDATE < (select MAX(HIREDATE)
                                                    FROM EMP)));