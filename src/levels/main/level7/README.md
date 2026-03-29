## 7. Basic Syntax - Conditional Query - NULL Values

### Tutorial

In databases, sometimes certain fields in a data table may not have a value, which is called a NULL value.

A NULL value indicates that the field's value is unknown, does not exist, or has not been filled in. In SQL queries, we can use "IS NULL" and "IS NOT NULL" to determine whether a field is NULL or non-NULL.

Application scenario for NULL values: Imagine you are an exam teacher, and the data in the table represents your students' exam scores. When a student has not taken the exam or their score has not yet been released, their exam score is NULL. You can use "IS NULL" to find students who haven't taken the exam, and use "IS NOT NULL" to find students who already have scores.



### Example

Assume there is a data table named `employees`, which stores employee information, including employee name (name), age (age), hire date (hire_date), etc.:

Data table `employees`:

|   name   | age | hire_date  |
|----------|-----|------------|
|   Tom    |  25 | 2020-01-01 |
|   Lucy   |  30 | 2020-02-15 |
|   Jack   |  28 |   NULL     |
|   Steve  | NULL| 2020-03-20 |

Now, let's use "IS NULL" to query employees whose hire date is not filled in:

```sql
-- SQL query statement
select name, age from employees where hire_date is null;
```

Query result:

| name | age  |
| ---- | ---- |
| Jack | 28   |



### Exercise

Please write an SQL query statement to select the name, age, and score of all students from the data table named `student`, where the student age is not NULL.

