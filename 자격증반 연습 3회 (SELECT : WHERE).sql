USE scott;

SELECT * FROM EMP;
SELECT * FROM DEPT;
SELECT * FROM SALGRADE;

-- emp 테이블에서 사원번호가 7698인 사원의
-- 이름, 업무, 급여를 출력하시오.

SELECT 	ENAME,
		JOB,
        SAL
  FROM 	EMP
 WHERE 	EMPNO = '7698';
 
-- emp 테이블에서 사원이름이 SMITH인 사람의 
-- 이름과 월급, 부서번호를 구하시오.

SELECT 	ENAME,
		SAL,
        EMPNO
  FROM	EMP
 WHERE	ENAME = 'SMITH'; 
  
-- 월급이 2500이상 3500 미만인 사원의
-- 이름, 입사일, 월급을 구하시오.

SELECT	ENAME,
		HIREDATE,
		SAL
  FROM	EMP
 WHERE  SAL	BETWEEN 2500 AND 3500;
 
-- 급여가 2000에서 3000사이에 포함되지 않는 사원의
-- 이름, 업무, 급여를 출력하시오.

SELECT 	ENAME,
		JOB,
		SAL
  FROM 	EMP
 WHERE 	SAL NOT BETWEEN 2000 AND 3000;

-- 81년05월01일과 81년12월03일 사이에 입사한 사원의
-- 이름, 급여, 입사일을 출력하시오.

SELECT	ENAME,
		SAL,
        HIREDATE
  FROM	EMP
 WHERE 	HIREDATE BETWEEN '81-05-01' AND '81-12-03';
 
-- emp 테이블에서 사원번호가 7566,7782,7934인 사원을 제와한 사람들의
-- 사원번호, 이름, 월급을 출력하시오.

SELECT	EMPNO,
		ENAME,
        SAL
  FROM	EMP
 WHERE 	EMPNO IN(7369, 7499, 7521, 7654, 7698, 7788, 7839, 7844, 7876, 7900, 7902);
 
-- 부서번호 30(deptno)에서 근무하며
-- 월2,000달러 이하를 받는 81년05월01일 이전에 입사한 사원의
-- 이름, 급여, 부서번호, 입사일을 출력하시오.

SELECT	ENAME,
		SAL,
        EMPNO,
        HIREDATE,
		DEPTNO
  FROM	EMP
 WHERE 	DEPTNO = 30 AND SAL < 2000 AND HIREDATE < '81/05/01';

-- emp테이블에서 급여가 2000 과 5000 사이고 부서번호가 10 또는 30인 사원의
-- 이름과 급여, 부서번호를 나열하시오.

SELECT	ENAME,
		SAL,
        DEPTNO
  FROM 	EMP
 WHERE  (SAL BETWEEN 2000 AND 5000) AND DEPTNO IN (10, 30); 
 
-- 업무가 SALESMAN 또는 MANAGER 이면서 급여가 1,600, 2,975 또는 2,850이 아닌
-- 모든 사원의 이름, 업무 및 급여를 표시하시오.

SELECT 	ENAME,
		JOB,
        SAL
  FROM 	EMP
 WHERE 	JOB = 'SALESMAN'; 

-- emp 테이블에서 사원이름 중 S가 포함되지 않는 사람들 중 부서번호가 20인 사원들의 
-- 이름과 부서번호를 출력하세요.

SELECT	
  FROM	EMP

-- emp테이블에서 이름에 A와 E가 있는 모든 사원의 이름을 표시하시오.

SELECT
  FROM	EMP

-- emp테이블에서 관리자가 없는 모든 사원의 이름과 업무를 표시하시오.

SELECT
  FROM	EMP

-- emp테이블에서 커미션 항목이 입력된 사원들의 이름과 급여, 커미션을 구하시오.

SELECT
  FROM 	EMP







 