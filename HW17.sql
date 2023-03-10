SELECT COUNT(DISTINCT JOB_ID)
FROM study.employees;


SELECT AVG(SALARY), COUNT(EMPLOYEE_ID)
FROM study.employees
WHERE DEPARTMENT_ID = 90;


SELECT JOB_ID, COUNT(EMPLOYEE_ID)
FROM study.employees
GROUP BY JOB_ID;


SELECT FIRST_NAME, LAST_NAME, ep.DEPARTMENT_ID, DEPARTMENT_NAME
FROM employees ep
LEFT JOIN departments dp
ON ep.DEPARTMENT_ID = dp.DEPARTMENT_ID;


SELECT FIRST_NAME, LAST_NAME, ep.DEPARTMENT_ID, DEPARTMENT_NAME, JOB_TITLE
FROM employees ep
LEFT JOIN jobs jb ON ep.JOB_ID = jb.JOB_ID
LEFT JOIN departments dp ON ep.DEPARTMENT_ID = dp.DEPARTMENT_ID
LEFT JOIN locations lc ON dp.LOCATION_ID = lc.LOCATION_ID
WHERE CITY = 'London'
