## 21. Advanced Query - Join Query - INNER JOIN

### Tutorial

In SQL, INNER JOIN is a common join query method that combines rows based on the join condition between two tables.

Note that INNER JOIN only returns the intersection of rows that satisfy the join condition in both tables, meaning matching rows that exist in both tables.

### Example

Assume there is an employees table `employees`, containing the following fields: `emp_id` (employee ID), `emp_name` (employee name), `department` (department), `salary` (salary). Data as follows:

| emp_id | emp_name | department | salary |
| ------ | -------- | ---------- | ------ |
| 1      | Tom      | Tech       | 5000   |
| 2      | James    | Finance    | 6000   |
| 3      | Lucy     | Sales      | 4500   |

Assume there is also a departments table `departments`, containing the following fields: `department` (department name), `manager` (department manager), `location` (location). Data as follows:

| department | manager | location  |
| ---------- | ------- | --------- |
| Tech       | Mike    | NewYork   |
| Finance    | Lisa    | Paris     |
| Sales      | Jack    | London    |
| Slack      | David   | Melbourne |

Use INNER JOIN to perform a join query, matching based on the common field `department` between the employees table and departments table, combining employee name, salary, department, and department manager:

```sql
SELECT e.emp_name, e.salary, e.department, d.manager
FROM employees e
JOIN departments d ON e.department = d.department;
```

Query result:

| emp_name | salary | department | manager |
| -------- | ------ | ---------- | ------- |
| Tom      | 5000   | Tech       | Mike    |
| James    | 6000   | Finance    | Lisa    |
| Lucy     | 4500   | Sales      | Jack    |

We will find that after using INNER JOIN, only data with corresponding relationships in both tables will be included in the query result.

### Exercise

Assume there is a student table `student`, containing the following fields: `id` (student ID), `name` (name), `age` (age), `class_id` (class ID). There is also a class table `class`, containing the following fields: `id` (class ID), `name` (class name), `level` (class level).

Please write an SQL query to match based on the class ID between the student table and class table, returning student name (`student_name`), student age (`student_age`), class ID (`class_id`), class name (`class_name`), class level (`class_level`).
