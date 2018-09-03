# 1. Write a query to get the department name (Departments.DEPARTMENT_NAME) and number of employees (COUNT) in each department.

SELECT D.DEPARTMENT_ID, D.DEPARTMENT_NAME, COUNT(*) AS "Number of Employees" FROM Employees E INNER JOIN Departments D ON E.DEPARTMENT_ID = D.DEPARTMENT_ID GROUP BY DEPARTMENT_ID;

# 2 Write a query to find the employee ID (Employees.EMPLOYEE_ID), job title (Jobs.JOB_TITLE), number of days between ending date and starting date (JobsHistory.END_DATE - JobsHistory.START_DATE) for all jobs in department 90 (DEPARTMENT_ID) from job history (JobsHistory).

SELECT Departments.DEPARTMENT_NAME, COUNT(*) AS "Number of employees" FROM Employees INNER JOIN Departments ON Employees.DEPARTMENT_ID = Departments.DEPARTMENT_ID GROUP BY DEPARTMENT_NAME;

# 3. Write a query to display the department name (Departments.DEPARTMENT_NAME), manager name (Employees.FIRST_NAME), and city (Locations.CITY).

SELECT Departments.DEPARTMENT_NAME, Employees.FIRST_NAME, Locations.CITY FROM Employees INNER JOIN Departments ON Employees.MANAGER_ID = Departments.MANAGER_ID INNER JOIN Locations ON Departments.LOCATION_ID = Locations.LOCATION_ID;

# 4. Write a query to display the job title (Jobs.JOBS_TITLE) and average salary (Employees.SALARY) of employees.
    
SELECT Jobs.JOB_TITLE, AVG(Employees.SALARY) AS "Avg. Salary of Employees" FROM Employees INNER JOIN Jobs ON Employees.JOB_ID = Jobs.JOB_ID GROUP BY JOB_TITLE;

# Bonus Write a query to display the job history (JobsHistory) that were done by any employee (Employees) who is currently earning more than 10000 of salary (Employees.SALARY).

SELECT * FROM JobHistory INNER JOIN Employees ON Employees.EMPLOYEE_ID = JobHistory.EMPLOYEE_ID WHERE Employees.SALARY > 10000
