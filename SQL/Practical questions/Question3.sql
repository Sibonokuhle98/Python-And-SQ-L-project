"3"
SELECT
    id, employee_name, department_id, manager_id, Age, COUNT(*) as count
FROM 
    employees
GROUP BY 
    id, employee_name, department_id, manager_id, Age
HAVING
    COUNT(*) > 1;

    
"3.1"

SELECT
    employee_name, Age, department_id
FROM
    (SELECT
        employee_name, Age,department_id,
        ROW_NUMBER() OVER (PARTITION BY department_id ORDER BY Age ASC) AS row_num
    FROM
        employees
    ) AS temp
WHERE
    row_num =3;
