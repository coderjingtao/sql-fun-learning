## 9. Basic Syntax - Conditional Query - Logical Operators

### Tutorial

Logical operators are operators used in conditional queries that allow us to combine multiple conditions to filter data meeting specific criteria.

Common logical operators include:

- AND: Represents logical AND, requires multiple conditions to be satisfied simultaneously to return true.
- OR: Represents logical OR, requires any one of the conditions to be satisfied to return true.
- NOT: Represents logical NOT, used to negate a condition (originally true, becomes false after NOT)



### Example

Assume there is a data table named `employees`, which stores employee information, including employee name (name), age (age), salary (salary), etc.:

Data table `employees`:

| name  | age | salary |
| ----- | --- | ------ |
| Tom   | 25  | 10000  |
| Lucy  | 30  | 12000  |
| Jack  | 28  | 15000  |
| Steve | 22  | 8000   |



Now, let's use logical operators to find employee information where the name contains the keyword "Jack" **AND** age is less than 30:

```sql
-- SQL query statement
select name, age, salary from employees where name like '%Jack%' and age < 30;
```



Query result:

| name | age | salary |
| ---- | --- | ------ |
| Jack | 28  | 15000  |



In the above query statement, we used the AND logical operator to obtain employee information that meets the requirements.



### Exercise

Please write an SQL query statement to select the name and score of all students from the data table named `student`, where the student name contains "J" OR the score is greater than 500.

