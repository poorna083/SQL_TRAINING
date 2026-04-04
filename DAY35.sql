-- PSUDOCOLUMNS:
--      THESE ARE THE FALSE OR VIRTUAL COLUMNS PRESENT IN THE TABLES
--      WE HAVE TWO PSUDOCOLUMNS.THEY ARE:
--         *ROWID
--         *ROWNUM
	
    SELECT ROWID , ROWNUM , EMP.*
	FROM EMP;

-- ROWID                  ROWNUM      EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
-- ------------------ ---------- ---------- ---------- --------- ---------- --------- ---------- ------
-- AAAMfPAAEAAAAAgAAA          1       7369 SMITH      CLERK           7902 17-DEC-80        800                    20
-- AAAMfPAAEAAAAAgAAB          2       7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
-- AAAMfPAAEAAAAAgAAC          3       7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
-- AAAMfPAAEAAAAAgAAD          4       7566 JONES      MANAGER         7839 02-APR-81       2975                    20
-- AAAMfPAAEAAAAAgAAE          5       7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
-- AAAMfPAAEAAAAAgAAF          6       7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
-- AAAMfPAAEAAAAAgAAG          7       7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
-- AAAMfPAAEAAAAAgAAH          8       7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
-- AAAMfPAAEAAAAAgAAI          9       7839 KING       PRESIDENT            17-NOV-81       5000                    10
-- AAAMfPAAEAAAAAgAAJ         10       7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
-- AAAMfPAAEAAAAAgAAK         11       7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
-- AAAMfPAAEAAAAAgAAL         12       7900 JAMES      CLERK           7698 03-DEC-81        950                    30
-- AAAMfPAAEAAAAAgAAM         13       7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
-- AAAMfPAAEAAAAAgAAN         14       7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

-- 14 rows selected.
    
    
-- ROWID:
--    IT IS THE ADDRESS GIVEN TO THE RECORDS PRESENT IN THE TABLE
--    IT CONTAIN EXCATLY 18 CHARACTERS
--    ROWID IS UNIQUE
--    ROWID IS STATIC
--    ROWID IS GENERATED AT THE TIME OF INSERTION OF RECORD
--    
-- ROWNUM:
--      IT IS A SERIAL NUMBER GIVEN TO THE RECORDS PRESENT IN A TABLE
--      ROWNUM ALWAYS STARTS FROM "1"
--      ROWNUM IS DINAMIC
--      ROWNUM IS GENERATED AT THE TIME OF EXECUTION

-- WAQTD FIRST RECORD OF EMP TABLE
 SELECT *
 FROM EMP
 WHERE ROWNUM = 1;

--  EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
-- ------ ---------- --------- ---------- --------- ---------- ---------- ----------
--   7369 SMITH      CLERK           7902 17-DEC-80        800                    20


-- WAQTD FIRST FOUR RECORDS OF EMP TABLE

 SELECT *
 FROM EMP
 WHERE ROWNUM IN (1,2,3,4);

--  EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
-- ------ ---------- --------- ---------- --------- ---------- ---------- ----------
--   7369 SMITH      CLERK           7902 17-DEC-80        800                    20
--   7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
--   7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
--   7566 JONES      MANAGER         7839 02-APR-81       2975                    20

 SELECT *
 FROM EMP
 WHERE ROWNUM <=4;

--  EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
-- ------ ---------- --------- ---------- --------- ---------- ---------- ----------
--   7369 SMITH      CLERK           7902 17-DEC-80        800                    20
--   7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
--   7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
--   7566 JONES      MANAGER         7839 02-APR-81       2975                    20

 SELECT *
 FROM EMP
 WHERE ROWNUM BETWEEN 1 AND 4;

--  EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
-- ------ ---------- --------- ---------- --------- ---------- ---------- ----------
--   7369 SMITH      CLERK           7902 17-DEC-80        800                    20
--   7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
--   7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
--   7566 JONES      MANAGER         7839 02-APR-81       2975                    20

-- WAQTD FOURTH RECORD OF EMP TABLE
 SELECT *
 FROM (SELECT ROWNUM AS SLNO , EMP.*
       FROM EMP)
 WHERE SLNO = 4;

--   SLNO      EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
-- ------ ---------- ---------- --------- ---------- --------- ---------- ---------- ----------
--      4       7566 JONES      MANAGER         7839 02-APR-81       2975                    20

-- WAQTD FIRST,THIRD,FIFTH AND SEVENTH RECORDS FROM THE TABLE

  SELECT *
  FROM (SELECT ROWNUM AS SLNO, EMP.*
        FROM EMP)
 WHERE SLNO IN (1,3,4,7);

--   SLNO      EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
-- ------ ---------- ---------- --------- ---------- --------- ---------- ---------- ----------
--      1       7369 SMITH      CLERK           7902 17-DEC-80        800                    20
--      3       7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
--      4       7566 JONES      MANAGER         7839 02-APR-81       2975                    20
--      7       7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10


-- WAQTD LAST RECORD FROM THE EMP TABLE

 SELECT *
 FROM (SELECT ROWNUM AS SLNO, EMP.*
       FROM EMP)
 WHERE SLNO IN (SELECT COUNT(*)
                FROM EMP);

--   SLNO      EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
-- ------ ---------- ---------- --------- ---------- --------- ---------- ---------- ----------
--     14       7934 MILLER     CLERK           7782 23-JAN-82       1300                    10


-- WAQTD FIRST HALF OF THE RECORD FROM THE EMP TABLE

 SELECT *
 FROM (SELECT ROWNUM AS SLNO , EMP.*
       FROM EMP)
 WHERE ROWNUM BETWEEN 1 AND (SELECT COUNT(*)/2 
                             FROM EMP);

--   SLNO      EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
-- ------ ---------- ---------- --------- ---------- --------- ---------- ---------- ----------
--      1       7369 SMITH      CLERK           7902 17-DEC-80        800                    20
--      2       7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
--      3       7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
--      4       7566 JONES      MANAGER         7839 02-APR-81       2975                    20
--      5       7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
--      6       7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
--      7       7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10


-- WAQTD SECOND HALF OF THE RECORD FROM THE EMP TABLE
     
 SELECT *
 FROM (SELECT ROWNUM AS SLNO , EMP.*
       FROM EMP)
 WHERE SLNO BETWEEN (SELECT COUNT(*)/2 FROM EMP) AND (SELECT COUNT(*) FROM EMP);

--   SLNO      EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
-- ------ ---------- ---------- --------- ---------- --------- ---------- ---------- ----------
--      7       7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
--      8       7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
--      9       7839 KING       PRESIDENT            17-NOV-81       5000                    10
--     10       7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
--     11       7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
--     12       7900 JAMES      CLERK           7698 03-DEC-81        950                    30
--     13       7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
--     14       7934 MILLER     CLERK           7782 23-JAN-82       1300                    10
