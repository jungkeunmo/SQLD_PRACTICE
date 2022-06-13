use scott;

show tables;

DESC EMP;
DESC BONUS;
DESC DEPT;
DESC SALGRADE;

SELECT * FROM	EMP;
SELECT * FROM 	BONUS;
SELECT * FROM 	DEPT;
SELECT * FROM 	SALGRADE;

-- emp 테이블에서 사원번호, 사원이름, 입사일을 출력하는데
-- 입사일이 빠른 사람순으로 정렬하시오.

SELECT	EMPNO, 
		ENAME,
		HIREDATE
  FROM	EMP
 ORDER	BY	HIREDATE ASC;  

-- emp 테이블에서 사원이름, 급여, 연봉을 구하고 연봉이 많은 순으로 정렬하시오.

SELECT	ENAME,
		SAL,
        SAL * 12 "연봉"
  FROM	EMP 
 ORDER	BY	SAL DESC;

-- 10번 부서와 20번부서에서 근무하고 있는 사원의 이름과 부서번호를 출력하는데
-- 이름을 영문자순으로 표시하시오.

SELECT	ENAME,
		EMPNO
  FROM	EMP
 WHERE	DEPTNO = ANY(10, 20)
 ORDER	BY	ENAME ASC;

-- 커미션을 받는 모든 사원의 이름, 급여 및
-- 커미션을 기준으로 내림차순으로 정렬하여 표시하십시오.

SELECT	ENAME,
		SAL,
        COMM
  FROM 	EMP
 WHERE	COMM IS NOT NULL
 ORDER	BY 	COMM 	DESC;




