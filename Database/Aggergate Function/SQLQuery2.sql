----Aggreagte Function
----Sum
SELECT
    AVG(Salary) Average_Salary
FROM
    Student;
	Select * from Student


	----Count
SELECT
    COUNT(*) product_count
FROM
    Student
WHERE
    Salary > 500;
-----Max

SELECT
    MAX(Salary) max_Salary
FROM
    Student;
----MIN
SELECT
    MIN(Salary) min_Salary
FROM
    Student;    
	
	---Sum
SELECT 
    Id, 
    SUM(Salary) Total_Salary
FROM 
    Student
GROUP BY
    Id
ORDER BY 
    Salary DESC;

