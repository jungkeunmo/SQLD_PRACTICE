USE SCOTT;

SHOW TABLES;

SELECT * FROM DEPT;
SELECT * FROM EMP;
SELECT * FROM BONUS;
SELECT * FROM SALGRADE;

-- emp 테이블에서 사원번호, 사원이름, 월급을 출력하시오.

SELECT	EMPNO,
		ENAME,
        SAL
  FROM	EMP;

-- emp 테이블에서 사원이름과 월급을 출력하는데 컬럼명은 이름, 월급으로 바꿔서 출력하시오.

SELECT	ENAME "이름",
		SAL "월급"
  FROM	EMP;

-- emp 테이블에서 사원번호, 사원이름, 월급, 연봉을 구하고 각각 컬럼명은
-- 사원번호, 사원이름, 월급, 연봉으로 출력하시오.

SELECT	EMPNO "사원번호",
		ENAME "사원이름",
        SAL "월급",
        SAL * 12 "연봉"
  FROM	EMP;

-- emp 테이블의 업무(job)를 중복되지 않게 표시하시오.

SELECT DISTINCT JOB 
  FROM EMP;
  
-- emp 테이블의 사원명과 업무로 연결(SMITH, CLERK)해서 표시하고
-- 컬럼명은 Employee and Job으로 표시하시오.

SELECT '(' || ENAME || ',' || JOB || ')' "Employee and Job" FROM EMP;

-- emp 테이블에서 사원번호가 7698 인 사원의 이름, 업무, 급여를 출력하시오.

SELECT	ENAME,
		JOB,
        SAL
  FROM	EMP
 WHERE	EMPNO = 7698; 

-- emp 테이블에서 사원이름이 SMITH인 사람의 이름과 월급, 부서번호를 구하시오.

SELECT	ENAME,
		SAL,
		DEPTNO
  FROM	EMP
 WHERE	ENAME LIKE "SMITH"; 

-- 월급이 2500이상 3500미만인 사원의 이름, 입사일, 월급을 구하시오.

SELECT	ENAME,
		HIREDATE,
        SAL
  FROM	EMP
 WHERE	SAL > 2500 AND	SAL < 3500; 

-- 급여가 2000에서 3000사이에 포함되지 않는 사원의 이름, 업무, 급여를 출력하시오.

SELECT	ENAME,
		JOB,
        SAL
  FROM	EMP
 WHERE	SAL NOT BETWEEN 2000 AND 3000;  

-- 81년 05월 01일과 81년 12월 03일 사이에 입사한 사원의 이름, 급여, 입사일을 출력하시오.

SELECT	ENAME,
		SAL,
		HIREDATE
  FROM 	EMP
 WHERE HIREDATE >= "19810501" AND HIREDATE <= "19811203";

-- emp테이블에서 사원번호가 7566,7782,7934인 사원을 제외한 사람들의 사원번호,이름, 월급을 출력하시오.

SELECT	EMPNO,
		ENAME,
		SAL
  FROM	EMP
 WHERE	EMPNO NOT IN (7566, 7782, 7934); 

-- 부서번호 30(deptno)에서 근무하며 월 2,000달러 이하를 받는 81년05월01일 이전에 입사한 사원의 이름, 급여, 부서번호, 입사일을 출력하시오

SELECT	ENAME,
		SAL,
        DEPTNO,
        HIREDATE
  FROM	EMP
 WHERE	DEPTNO = 30
   AND	SAL < 2000
   AND	HIREDATE < "810501";

-- emp테이블에서 급여가 2,000와 5,000 사이고 부서번호가 10 또는 30인 사원의 이름과 급여,부서번호를 나열하시오.

SELECT	ENAME,
		SAL,
		DEPTNO
  FROM	EMP
 WHERE	SAL > 2000 AND SAL < 5000
   AND	DEPTNO IN (10, 30);

-- 업무가 SALESMAN 또는 MANAGER이면서 급여가 1,600, 2,975 또는 2,850이 아닌 모든 사원의 이름, 업무 및 급여를 표시하시오.

SELECT	ENAME,
		JOB
  FROM	EMP
 WHERE	JOB IN ("SALESMAN", "MANAGER")
   AND	SAL NOT IN (1600, 2975, 2850);
 
-- emp테이블에서 사원이름 중 S가 포함되지 않은 사람들 중 부서번호가 20인 사원들의 이름과 부서번호를 출력하시오.

SELECT	ENAME,
		DEPTNO
  FROM	EMP
 WHERE	ENAME NOT LIKE "%S%"
   AND	DEPTNO = 20;

-- emp테이블에서 이름에 A와 E가 있는 모든 사원의 이름을 표시하시오.

SELECT	ENAME
  FROM	EMP
 WHERE	ENAME LIKE "%A%"
   AND	ENAME LIKE "%E%";
	
-- emp테이블에서 관리자가 없는 모든 사원의 이름과 업무를 표시하시오.

SELECT	ENAME,
		JOB
  FROM	EMP
 WHERE	MGR IS NOT NULL; 

-- emp테이블에서 커미션 항목이 입력된 사원들의 이름과 급여, 커미션을 구하시오.
SELECT	ENAME,
		SAL,
        COMM
  FROM	EMP
 WHERE	COMM IS NOT NULL
   AND	COMM <> 0;




