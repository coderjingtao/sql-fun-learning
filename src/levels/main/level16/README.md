## 16. Functions - Aggregate Functions

### Tutorial
In SQL, aggregate functions are a special type of function used to perform **summary calculations** on datasets. They can perform operations such as counting, summing, averaging, finding maximum values, and finding minimum values on a set of data. Aggregate functions are typically used in SELECT statements with the GROUP BY clause to perform summary analysis on grouped data.

Common aggregate functions include:

- COUNT: Calculates the number of rows or non-null values in a specified column.
- SUM: Calculates the sum of numeric values in a specified column.
- AVG: Calculates the average of numeric values in a specified column.
- MAX: Finds the maximum value in a specified column.
- MIN: Finds the minimum value in a specified column.



### Example
Assume there is an orders table `orders`, containing the following fields: `order_id`, `customer_id`, `amount`. Data as follows:

| order_id | customer_id | amount |
|---------|-------------|--------|
| 1       | A001        | 100    |
| 2       | A002        | 200    |
| 3       | A001        | 150    |
| 4       | A003        | 50     |



1) Use the aggregate function `COUNT` to calculate the total number of orders in the orders table:

```sql
SELECT COUNT(*) AS order_num
FROM orders;
```

Query result:

| order_num |
| --------- |
| 4         |



2) Use the aggregate function `COUNT(DISTINCT column_name)` to calculate the number of distinct customers in the orders table:

```sql
SELECT COUNT(DISTINCT customer_id) AS customer_num
FROM orders;
```

Query result:

| customer_num |
| ------------ |
| 3            |



3) Use the aggregate function `SUM` to calculate the total order amount:

```sql
SELECT SUM(amount) AS total_amount
FROM orders;
```

Query result:

| total_amount |
| ------------ |
| 500          |



### Exercise

Assume there is a student table `student`, containing the following fields: `id` (student ID), `name` (name), `class_id` (class ID), `score` (score). Please write an SQL query to summarize the total score (total_score), average score (avg_score), maximum score (max_score), and minimum score (min_score) of all students in the student table.

