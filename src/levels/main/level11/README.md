## 11. Basic Syntax - Sorting

### Tutorial
When querying data, we sometimes want to sort the results by the value of a specific field to better view the data.

In SQL, we can use the `ORDER BY` keyword to perform sorting operations. After `ORDER BY`, specify the field to sort by, and you can choose ascending (ASC) or descending (DESC) order.



### Example
Assume there is a data table named `students`, which stores student information, including student name (name), age (age), and score (score), etc.:

Data table `students`:

|   name   | age | score |
|----------|-----|-------|
|   Tom    |  18 |  90   |
|   Lucy   |  20 |  85   |
|   Jack   |  19 |  92   |
|   Steve  |  20 |  88   |



Now, let's use the `ORDER BY` keyword to sort the student table:

```sql
-- SQL query statement 1
select name, age from students order by age asc;

-- SQL query statement 2
select name, score from students order by score desc;
```



Query statement 1 result, sorted by age in ascending order (from smallest to largest):

|   name   | age |
|----------|-----|
|   Tom    |  18 |
|   Jack   |  19 |
|   Lucy   |  20 |
|   Steve  |  20 |



Query statement 2 result, sorted by score in descending order (from largest to smallest):

|   name   | score |
|----------|-------|
|   Jack   |  92   |
|   Tom    |  90   |
|   Steve  |  88   |
|   Lucy   |  85   |



Based on sorting, we can also sort by multiple fields. When the values of the first field are the same, they are then sorted by the values of the second field, and so on.

Example syntax:

```sql
order by field1 [asc/desc], field2 [asc/desc], ...
```



### Exercise
Please write an SQL query statement to select the student name (name), age (age), and score (score) from the data table named `student`, first sorted by score from highest to lowest, and if scores are the same, then sorted by age from youngest to oldest.

