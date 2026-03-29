## 20. Advanced Query - Join Query - CROSS JOIN


### Tutorial
In previous tutorials, all our query operations were performed on single data tables. But sometimes, we may want to get additional data based on a single table, such as getting the class information for students in the student table. This is where join queries come in.

In SQL, join queries are a way to combine data from multiple data tables.

Among them, `CROSS JOIN` is a simple join query that doesn't require any conditions to match rows. It directly combines **every row** from the left table with **every row** from the right table, returning the Cartesian product of the two tables.



### Example
Assume there is an employees table `employees`, containing the following fields: `emp_id` (employee ID), `emp_name` (employee name), `department` (department), `salary` (salary). Data as follows:

| emp_id | emp_name | department | salary |
|--------|----------|------------|--------|
| 1      | Tom      | Tech       | 5000   |
| 2      | James    | Finance    | 6000   |
| 3      | Lucy     | Sales      | 4500   |



Assume there is also a departments table `departments`, containing the following fields: `department` (department name), `manager` (department manager), `location` (location). Data as follows:

| department | manager | location |
|------------|---------|----------|
| Tech       | Mike    | Shanghai |
| Finance    | Lisa    | Beijing  |
| Sales      | Jack    | Guangzhou|



Use CROSS JOIN to perform a join query, combining all rows from the employees table and departments table to get employee name, salary, department name, and department manager. Example SQL code as follows:

```sql
SELECT e.emp_name, e.salary, d.department, d.manager
FROM employees e
CROSS JOIN departments d;
```

The above SQL can also be simplified to:

```sql
SELECT e.emp_name, e.salary, d.department, d.manager
FROM employees e, departments d;
```

By separating table names with commas, the Cartesian product is implicitly implemented. This is an early SQL syntax, functionally identical to CROSS JOIN.

Note: In multi-table join queries, it's best to specify the table name when selecting fields (e.g., e.emp_name), and you can simplify SQL statements by giving tables aliases (e.g., employees e).

Query result:

| emp_name | salary | department | manager |
|----------|--------|------------|---------|
| Tom      | 5000   | Tech       | Mike    |
| Tom      | 5000   | Finance    | Lisa    |
| Tom      | 5000   | Sales      | Jack    |
| James    | 6000   | Tech       | Mike    |
| James    | 6000   | Finance    | Lisa    |
| James    | 6000   | Sales      | Jack    |
| Lucy     | 4500   | Tech       | Mike    |
| Lucy     | 4500   | Finance    | Lisa    |
| Lucy     | 4500   | Sales      | Jack    |



### Exercise

Assume there is a student table `student`, containing the following fields: id (student ID), name (name), age (age), class_id (class ID); there is also a class table `class`, containing the following fields: id (class ID), name (class name).

Please write an SQL query to combine all rows from the student table and class table, and return the student name (student_name), student age (student_age), class ID (class_id), and class name (class_name).

