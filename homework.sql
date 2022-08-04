USE scott;

show tables;

SELECT * FROM EMP;
SELECT * FROM DEPT;
SELECT * FROM BOUNS;
SELECT * FROM SALGRADE;

SELECT 	ENAME
  FROM	EMP
 ORDER	BY	ENAME DESC;
 
-- 모든 사원의 이름, 부서번호, 부서이름을 표시하시오.(emp,dept) 

SELECT	E.ENAME,
		E.DEPTNO,
        D.LOC
  FROM	EMP		E
 INNER	
  JOIN	DEPT	D
    ON	E.DEPTNO = D.DEPTNO;

-- 업무가 MANAGER인 사원의 정보를 이름,업무,부서명,근무지 순으로 출력하시오.(emp,dept)

SELECT	E.ENAME,
		E.JOB,
		D.DNAME,
        D.LOC
  FROM	EMP		E
 INNER	
  JOIN	DEPT	D
    ON	E.DEPTNO = D.DEPTNO
 WHERE  E.JOB = "MANAGER";

-- 커미션을 받고 급여가 1,600이상인 사원의 사원이름,부서명,근무지를 출력하시오

SELECT	E.ENAME,
		D.DNAME,
        D.LOC,
        E.COMM,
        E.SAL
  FROM	EMP		E
 INNER	
  JOIN	DEPT	D 
    ON	E.DEPTNO = D.DEPTNO
 WHERE	SAL > 1600;
 
-- 근무지가 CHICAGO인 모든 사원의 이름,업무,부서번호 및 부서이름을 표시하시오.

SELECT	E.ENAME,
		E.JOB,
		E.DEPTNO
  FROM	EMP		E
 INNER
  JOIN	DEPT	D
    ON	E.DEPTNO = D.DEPTNO
 WHERE  D.LOC	= "CHICAGO";
	
-- 근무지별로 근무하는 사원의 수가 5명 이하인 경우, 인원이 적은 도시순으로 정렬하시오.(근무 인원이 0명인 곳도 표시)



-- 사원의 이름 및 사원 번호를 관리자의 이름과 관리자 번호와 함께 표시하고 
-- 각각의 열 레이블은 employee, emp#, manager, mgr#로 지정하시오.

SELECT	E.ENAME "employee",
		E.EMPNO "emp#",
		M.ENAME "manager",
        M.EMPNO "mgr#"
  FROM	EMP		E, EMP		M
 WHERE	E.MGR = M.EMPNO; 
	

-- 관리자보다 먼저 입사한 모든 사원의 이름 및 입사일을 관리자의 이름 및 입사일과 
-- 함께 표시하고 열 레이블을 각각 employee, emp hired, manager, mgr hired로 지정

SELECT	E.ENAME,
		E.HIREDATE,
        M.ENAME,
        M.HIREDATE
  FROM	EMP		E,EMP  	  M
 WHERE	E.MGR = M.EMPNO
   AND	E.HIREDATE < M.HIREDATE;
	
-- 사원의 이름 및 사원번호를 관리자의 이름과 관리자 번호와 함께 표시하고 각각의 열 
-- 레이블은 employee, emp#, manager, mgr#로 지정하는데 King을 포함하여 관리자가 
-- 없는 모든 사원을 표시하도록 하고 결과를 사원번호를 기준으로 정렬

-- 지정한 부서번호, 사원이름 및 지정한 사원과 동일한 부서에서 근무하는 모든 사원을
-- 표시하도록 질의를 작성하고 부서번호는 department, 사원이름은 employee, 동일한
-- 부서에서 근무하는 사원은 colleague로 표시하시오.(부서번호, 사원이름,동료 순으로 오름차순 정렬)

-- 10번부서에서 근무하는 사원들의 부서번호, 부서이름, 사원이름, 월급, 급여등급을 출력하시오.

SELECT	E.DEPTNO,
		D.DNAME,
        E.ENAME,
        E.SAL,
        S.GRADE
  FROM	EMP			E, DEPT		D,SALGRADE		S
 WHERE	E.DEPTNO = D.DEPTNO
   AND	E.DEPTNO = 10;


















