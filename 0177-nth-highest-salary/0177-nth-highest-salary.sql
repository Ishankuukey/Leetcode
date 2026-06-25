CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
    RETURN (
        WITH cte AS (
            SELECT
                Salary,
                DENSE_RANK() OVER (ORDER BY Salary DESC) AS rnk
            FROM Employee
        )
        SELECT IFNULL(
            (SELECT Salary
             FROM cte
             WHERE rnk = N
             LIMIT 1),
            NULL
        )
    );
END