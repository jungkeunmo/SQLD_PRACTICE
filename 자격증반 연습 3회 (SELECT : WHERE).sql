USE scott;

SELECT * FROM EMP;
SELECT * FROM DEPT;
SELECT * FROM SALGRADE;

-- emp 테이블에서 사원번호가 7698인 사원의
-- 이름, 업무, 급여를 출력하시오.
SELECT 	ENAME,
		JOB,
        SAL
  FROM 	emp 
 WHERE 	EMPNO = '7698';
 
-- emp 테이블에서 사원이름이 SMITH인 사람의 
-- 이름과 월급, 부서번호를 구하시오.
SELECT 	ENAME,
		SAL,
        EMPNO
  FROM	emp
 WHERE	ENAME = 'SMITH'; 
  
-- 월급이 2500이상 3500 미만인 사원의
-- 이름, 입사일, 월급을 구하시오.
SELECT	ENAME,
		HIREDATE,
		SAL
  FROM	emp
 WHERE  SAL	BETWEEN 2500 AND 3500;
 
-- 급여가 2000에서 3000사이에 포함되지 않는 사원의
-- 이름, 업무, 급여를 출력하시오.
SELECT 	ENAME,
		JOB,
		SAL
  FROM 	emp
 WHERE 	SAL NOT BETWEEN 2000 AND 3000;

-- 81년05월01일과 81년12월03일 사이에 입사한 사원의
-- 이름, 급여, 입사일을 출력하시오.
SELECT	ENAME,
		SAL,
        HIREDATE
  FROM	emp
 WHERE 	HIREDATE BETWEEN '81-05-01' AND '81-12-03';
 
-- emp 테이블에서 사원번호가 7566,7782,7934인 사원을 제와한 사람들의
-- 사원번호, 이름, 월급을 출력하시오.
SELECT	EMPNO,
		ENAME,
        SAL
  FROM	emp
 WHERE 	EMPNO != ANY(7566, 7782, 7934);
 
-- 부서번호 30(deptno)에서 근무하며
-- 월2,000달러 이하를 받는 81년05월01일 이전에 입사한 사원의
-- 이름, 급여, 부서번호, 입사일을 출력하시오.
SELECT	ENAME,
		SAL,
        EMPNO,
        HIREDATE,
		DEPTNO
  FROM	emp
 WHERE 	DEPTNO = 30 AND SAL < 2000 AND HIREDATE < '81/05/01';

-- emp테이블에서 급여가 2000 과 5000 사이고 부서번호가 10 또는 30인 사원의
-- 이름과 급여, 부서번호를 나열하시오.
SELECT	ENAME,
		SAL,
        DEPTNO
  FROM 	emp
 WHERE  (SAL BETWEEN 2000 AND 5000) AND DEPTNO = 10; 









 