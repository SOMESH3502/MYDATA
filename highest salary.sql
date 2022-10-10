1)FETCH DUPLICATE RECORDS
SELECT MANAGER_ID ,COUNT(*) FROM employees GROUP BY MANAGER_ID HAVING COUNT(*)>1

3) 
SELECT * FROM STAGE_EMP INNER JOIN FINALSTAGE_EMP ON STAGE_EMP.E_NO = FINALSTAGE_EMP.E_NO



SELECT * FROM STAGE_EMP
SELECT *  FROM FINALSTAGE_EMP





select A.employee_id,A.first_name,A.salary from(select employee_id,first_name,salary,dense_rank() over (order by salary desc) as RN from employees) as A where RN=1
UNION
select A.employee_id,A.first_name,A.salary from(select employee_id,first_name,salary,dense_rank() over (order by salary desc) as RN from employees) as A where RN=2

ANOTHER METHOD

WITH HIGHEST AS 
( 
SELECT * ,DENSE_RANK() OVER (ORDER BY SALARY DESC ) AS DENSERANK FROM employees
)
SELECT * FROM HIGHEST WHERE DENSERANK=1 OR DENSERANK=2

