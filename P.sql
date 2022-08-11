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
   
-- 이름이 ALLEN인 사원과 같은 업무를 하는 사람의 사원번호, 이름, 업무, 급여 추출

SELECT	EMPNO,
		ENAME,
		JOB,
        SAL
  FROM	EMP
 WHERE	JOB = (
	SELECT	JOB
      FROM	EMP
     WHERE	ENAME = "ALLEN" 
 ); 

-- EMP 테이블의 사원번호가 7521인 사원과 업무가 같고 급여가 7934인 사원보다 많은 사원의 사원번호, 이름, 담당업무, 입사일, 급여 추출

SELECT	EMPNO,
		ENAME,
		JOB,
        HIREDATE,
        SAL
  FROM	EMP
 WHERE	JOB = (
	SELECT	JOB
      FROM	EMP
     WHERE	EMPNO = 7521 
 )
   AND	SAL > (
	SELECT	SAL
      FROM	EMP
     WHERE	EMPNO = 7934 
   );

-- EMP 테이블에서 급여의 평균보다 적은 사원의 사원번호, 이름, 업무, 급여, 부서번호 추출

SELECt	EMPNO,
		ENAME,
		JOB,
        SAL,
        DEPTNO
  FROM	EMP
 WHERE	SAL < (
	SELECT 	AVG(SAL)
      FROM	EMP
 );

-- 부서별 최소급여가 20번 부서의 최소급여보다 작은 부서의 부서번호, 최소 급여 추출

-- 업무별 급여 평균 중 가장 작은 급여평균의 업무와 급여평균 추출

-- 업무별 최대 급여를 받는 사원의 사원번호, 이름, 업무, 입사일, 급여, 부서번호 추출

-- 30번 부서의 최소급여를 받는 사원보다 많은 급여를 받는 사원의 사원번호, 이름, 업무, 입사일, 급여, 부서번호, 단 30번 부서는 제외하고 추출

-- 급여와 보너스가 30번 부서에 있는 사원의 급여와 보너스가 같은 사원을 30번 부서의 사원은 제외하고 추출

-- BLAKE와 같은 부서에 있는 모든 사원의 이름과 입사일자를 추출

-- 평균급여 이상을 받는 모든 사원에 대해 사원의 번호와 이름을 급여가 많은 순서로 추출

-- 이름에 T가 있는 사원이 근무하는 부서에서 근무하는 모든 사원에 대해 사원번호,이름,급여를 출력, 사원번호 순서로 추출

-- 부서위치가 CHICAGO인 모든 사원에 대해 이름,업무,급여 추출

-- KING에게 보고하는 모든 사원의 이름과 급여를 추출

14. FORD와 업무와 월급이 같은 사원의 모든 정보 추출

15. 업무가 JONES와 같거나 월급이 FORD 이상인 사원의 이름,업무,부서번호,급여 추출

16. SCOTT 또는 WARD와 월급이 같은 사원의 이름,업무,급여를 추출

17. SALES에서 근무하는 사원과 같은 업무를 하는 사원의 이름,업무,급여,부서번호 추출

18. 자신의 업무별 평균 월급보다 낮은 사원의 부서번호, 이름, 급여, 자신의 부서 평균급여를 추출

19. 사원번호,사원명,부서명,소속부서 인원수,업무,소속 업무 급여평균,급여를 추출

20. 사원번호,사원명,부서번호,업무,급여, 자신의 소속 업무 평균급여를 추출

21. 최소한 한 명의 부하직원이 있는 관리자의 사원번호,이름,입사일자,급여 추출

22. 부하직원이 없는 사원의 사원번호, 이름, 업무, 부서번호 추출

23. BLAKE의 부하직원의 이름, 업무, 상사번호 추출

24. BLAKE와 같은 상사를 가진 사원의 이름,업무, 상사번호 추출   




