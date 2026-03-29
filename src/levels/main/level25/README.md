## 25. Advanced Query - Combination Query

### Tutorial
In SQL, combination query is a query operation that merges the results of multiple SELECT queries together.

There are two common combination query operations: UNION and UNION ALL.

1. UNION operation: It is used to merge the result sets of two or more queries, **and removes duplicate rows**. That is, if two queries have the same rows, only one row is kept.

2. UNION ALL operation: It is also used to merge the result sets of two or more queries, **but does not remove duplicate rows**. That is, if two queries have the same rows, all are kept.



### Example
Assume we have the following two data tables: `table1` and `table2`, containing employee information from different departments.

table1 table:

| emp_id | name    | age | department |
|--------|---------|-----|------------|
| 101    | Alice   | 25  | HR         |
| 102    | Bob     | 28  | Finance    |
| 103    | Charlie | 22  | IT         |



table2 table:

| emp_id | name  | age | department |
| ------ | ----- | --- | ---------- |
| 101    | Alice | 25  | HR         |
| 201    | David | 27  | Finance    |
| 202    | Eve   | 24  | HR         |
| 203    | Frank | 26  | IT         |



Now, we want to merge the data from these two tables, executing UNION operation and UNION ALL operation respectively.

UNION operation:

```sql
SELECT name, age, department
FROM table1
UNION
SELECT name, age, department
FROM table2;
```



UNION operation result, duplicate rows removed (name Alice):

| name    | age | department |
|---------|-----|------------|
| Alice   | 25  | HR         |
| Bob     | 28  | Finance    |
| Charlie | 22  | IT         |
| David   | 27  | Finance    |
| Eve     | 24  | HR         |
| Frank   | 26  | IT         |



UNION ALL operation:

```sql
-- UNION ALL operation
SELECT name, age, department
FROM table1
UNION ALL
SELECT name, age, department
FROM table2;
```



Result as follows, duplicate rows retained:

| name    | age | department |
| ------- | --- | ---------- |
| Alice   | 25  | HR         |
| Bob     | 28  | Finance    |
| Charlie | 22  | IT         |
| Alice   | 25  | HR         |
| David   | 27  | Finance    |
| Eve     | 24  | HR         |
| Frank   | 26  | IT         |



### Exercise

Assume there is a student table `student`, containing the following fields: `id` (student ID), `name` (name), `age` (age), `score` (score), `class_id` (class ID). There is also a new student table `student_new`, with exactly the same fields as the student table.

Please write an SQL statement to get the student name (`name`), age (`age`), score (`score`), class ID (`class_id`) fields from both the student table and new student table, keeping duplicate student records.

