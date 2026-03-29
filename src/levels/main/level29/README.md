## 29. Advanced Query - Window Functions - ROW_NUMBER

### Tutorial


Row_Number window function is a window function in SQL used to **assign a unique consecutive rank** to each row in the query result set.

Unlike the Rank function mentioned earlier, the Row_Number function assigns a unique integer value to each row, regardless of whether there are ties (identical sort values). Each row has a unique row number, starting from 1 and incrementing consecutively.

The syntax of the Row_Number window function is as follows (almost identical to the Rank function):

```sql
ROW_NUMBER() OVER (
  PARTITION BY column1, column2, ... -- Optional, used to specify grouping columns
  ORDER BY column3 [ASC|DESC], column4 [ASC|DESC], ... -- Used to specify sorting columns and sorting method
) AS row_number_column
```

Where the `PARTITION BY` clause is optional and used to specify grouping columns to group the result set by specified columns. The `ORDER BY` clause is used to specify sorting columns and sorting method, determining the sorting rules when calculating Row_Number. `AS row_number_column` is used to specify the alias of the generated row number column.



### Example
Assume we have an orders table `orders`, table data as follows:

| order_id | customer_id | order_date | total_amount |
|----------|-------------|------------|--------------|
| 1        | 101         | 2023-01-01 | 200          |
| 2        | 102         | 2023-01-05 | 350          |
| 3        | 101         | 2023-01-10 | 120          |
| 4        | 103         | 2023-01-15 | 500          |



Now, we want to sort each customer's orders by order amount in descending order, and assign a row_number to each order. Example SQL statement as follows:

```sql
SELECT
    order_id,
    customer_id,
    order_date,
    total_amount,
    ROW_NUMBER() OVER (PARTITION BY customer_id ORDER BY total_amount DESC) AS row_number
FROM
    orders;
```



The result will be:

| order_id | customer_id | order_date | total_amount | row_number |
| -------- | ----------- | ---------- | ------------ | ---------- |
| 4        | 103         | 2023-01-15 | 500          | 1          |
| 2        | 102         | 2023-01-05 | 350          | 1          |
| 1        | 101         | 2023-01-01 | 200          | 1          |
| 3        | 101         | 2023-01-10 | 120          | 2          |



In the above example, we use the window function ROW_NUMBER to sort each customer's orders by order amount in descending order and assign a number (row_number) to each order, using the PARTITION BY clause to group by customer_id, and using the ORDER BY clause to sort by total_amount.



### Exercise
Assume there is a student table `student`, containing the following fields: `id` (student ID), `name` (name), `age` (age), `score` (score), `class_id` (class ID).

Please write an SQL query to return the detailed information of each student (field order should be consistent with the original table's field order), and assign a number (row_number) to each student within each class in descending order of score.

