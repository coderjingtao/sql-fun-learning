## 6. Basic Syntax - Conditional Query - Operators

### Tutorial

Operators are special symbols used in SQL for conditional judgment in queries, such as `=`, `!=`, `<`, `>`, etc. By using different operators, we can set diverse conditions in query statements, enabling flexible filtering based on different data attributes.

Imagine you are a recruiter, and the data in the table is like the candidates you interview. Different operators are like different interview criteria you set. For example, you can use the "!=" operator to filter out candidates who don't meet a certain condition, use the ">" operator to filter out candidates with excellent performance, and use the "BETWEEN" operator to filter out candidates within a certain age range.



### Example

Let's look at a specific SQL code and result example. Assume there is a data table named `employees`, which stores employee information, including employee name (name), age (age), salary (salary), etc.:

Data table `employees`:

|   name   | age | salary |
|----------|-----|--------|
|   Tom    |  25 |  5000  |
|   Lucy   |  30 |  6000  |
|   Jack   |  28 |  5500  |
|   Steve  |  22 |  4500  |



Now, let's use different operators for conditional queries:

1) Use the "!=" operator to filter out employees whose name is not 'Steve':

```sql
-- SQL query statement
select name, age, salary from employees where name != 'Steve';
```

Query result:

|   name   | age | salary |
|----------|-----|--------|
|   Tom    |  25 |  5000  |
|   Lucy   |  30 |  6000  |
|   Jack   |  28 |  5500  |



2) Use the ">" operator to filter out employees with salary greater than 5500:

```sql
-- SQL query statement
select name, age, salary from employees where salary > 5500;
```

Query result:

|   name   | age | salary |
|----------|-----|--------|
|   Lucy   |  30 |  6000  |



3) Use the "BETWEEN" operator to filter out employees aged between 25 and 30:

```sql
-- SQL query statement
select name, age, salary from employees where age between 25 and 30;
```

Query result:

|   name   | age | salary |
|----------|-----|--------|
|   Tom    |  25 |  5000  |
|   Lucy   |  30 |  6000  |
|   Jack   |  28 |  5500  |

Through the above SQL query statements, we can perform conditional queries using different operators and obtain employee information that meets different conditions.



### Exercise

Please write an SQL query statement to select the name and age of all students from the data table named `student`, where the student name is not equal to 'Michael'.

