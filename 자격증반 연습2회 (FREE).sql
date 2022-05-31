USE scott;

SHOW tables;

SELECT * FROM emp;
SELECT * FROM dept;
SELECT * FROM bonus;
SELECT * FROM salgrade;

-- BLAKE와 같은 부서에 있는 사원들의
-- 이름과 입사일을 구하는데
-- BLAKE는 제외하고 출력하시오.(BLAKE가 여러명일수 있음)
SELECT ENAME, 
	   HIREDATE
  FROM EMP     
 WHERE DEPTNO = (SELECT 
	   DEPTNO
  FROM EMP
 WHERE ENAME = 'BLAKE') AND  ENAME != 'BLAKE';  

-- 직원번호, 직원명, 부서번호, 사는곳 을 오름차순으로 출력하시오.
SELECT 	A.EMPNO,
		A.ENAME,
        B.DNAME,
        B.LOC
  FROM	emp		A
 INNER
  JOIN	dept	B
    ON	A.DEPTNO = B.DEPTNO
 ORDER 	BY 	ENAME	ASC;    
 
 
 
 
 
 
    