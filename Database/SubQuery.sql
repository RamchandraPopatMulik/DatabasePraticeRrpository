SELECT
    Name,
    RollNo,
    Class
FROM
   Student
WHERE
    RollNo IN (
        SELECT
            RollNo
        FROM
            Student1
        WHERE
            Name = 'Ram'
    )
ORDER BY
    RollNo DESC;


Select * from Student


SELECT
    Name,
    RollNo,
    Class
from
   Student
WHERE
    EXISTS (SELECT NULL)
ORDER BY
    Name,
    RollNo;

SELECT
    AVG (RollNo) avg_RollNo
FROM
    Student
GROUP BY
    Class
ORDER BY
    avg_RollNo;