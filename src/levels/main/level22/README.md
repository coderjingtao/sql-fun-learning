## 22. Advanced Query - Join Query - OUTER JOIN

### Tutorial

In SQL, OUTER JOIN is a join query method that combines rows from two tables based on the specified join condition, and **includes unmatched rows**.

In OUTER JOIN, there are two types: LEFT OUTER JOIN and RIGHT OUTER JOIN. They respectively return all rows from the left table and right table (even if not matched), plus the intersection of rows that satisfy the condition.



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
| HR         | Jack    | London    |
| Slack      | David   | Melbourne |



Use LEFT JOIN to perform a join query, matching based on the department name between the employees table and departments table, combining employee name, salary, department, and department manager, and including all employee information:

```sql
SELECT e.emp_name, e.salary, e.department, d.manager
FROM employees e
LEFT JOIN departments d ON e.department = d.department;
```



Query result:

| emp_name | salary | department | manager |
|----------|--------|------------|---------|
| Tom      | 5000   | Tech       | Mike    |
| James    | 6000   | Finance    | Lisa    |
| Lucy     | 4500   | Sales      | NULL    |



Notice the last row in the table - Lucy's Sales department doesn't exist in the departments table, but it's still returned in the result set with manager as NULL.

Some databases don't support RIGHT JOIN syntax, so how can we implement RIGHT JOIN?

Actually, you just need to swap the order of the main table (after FROM) and the joined table (after LEFT JOIN)!



### Exercise

Assume there is a student table `student`, containing the following fields: `id` (student ID), `name` (name), `age` (age), `class_id` (class ID). There is also a class table `class`, containing the following fields: `id` (class ID), `name` (class name), `level` (class level).

Please write an SQL query to match based on the class ID between the student table and class table, returning student name (`student_name`), student age (`student_age`), class ID (`class_id`), class name (`class_name`), class level (`class_level`). The query must return all student information (even if the corresponding class ID doesn't exist).


