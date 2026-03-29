## 28. Advanced Query - Window Functions - RANK

### Tutorial
In this section, we will learn a new window function: Rank.

The Rank window function is a window function in SQL used to **rank** the rows in a query result set. It can sort the rows in the result set based on specified columns or expressions, and assign a rank to each row. During the ranking process, identical values will be assigned the same rank, while different values will be assigned different ranks.

> When there are ties (identical sort values), Rank will skip subsequent ranks and keep the same rank.

A common use of the Rank window function is to find the top few (Top N) or highest-ranked rows in query results.

The syntax of the Rank window function is as follows:

```sql
RANK() OVER (
  PARTITION BY column1, column2, ... -- Optional, used to specify grouping columns
  ORDER BY column3 [ASC|DESC], column4 [ASC|DESC], ... -- Used to specify sorting columns and sorting method
) AS rank_column
```

Where the `PARTITION BY` clause is optional and used to specify grouping columns to group the result set by specified columns; the `ORDER BY` clause is used to specify sorting columns and sorting method, determining the sorting rules when calculating Rank. `AS rank_column` is used to specify the alias of the generated Rank column.



### Example
Assume we have an orders table `orders`, table data as follows:

| order_id | customer_id | order_date | total_amount |
|----------|-------------|------------|--------------|
| 1        | 101         | 2023-01-01 | 200          |
| 2        | 102         | 2023-01-05 | 350          |
| 3        | 101         | 2023-01-10 | 120          |
| 4        | 103         | 2023-01-15 | 500          |



Now, we want to rank each customer's orders by order amount in descending order, and display the details of each order.

```sql
SELECT
    order_id,
    customer_id,
    order_date,
    total_amount,
    RANK() OVER (PARTITION BY customer_id ORDER BY total_amount DESC) AS customer_rank
FROM
    orders;
```



Query result:

| order_id | customer_id | order_date | total_amount | customer_rank |
| -------- | ----------- | ---------- | ------------ | ------------- |
| 1        | 101         | 2023-01-01 | 200          | 1             |
| 3        | 101         | 2023-01-10 | 120          | 2             |
| 2        | 102         | 2023-01-05 | 350          | 1             |
| 4        | 103         | 2023-01-15 | 500          | 1             |



In the above example, we use the window function RANK to rank each customer's orders by order amount in descending order (customer_rank), using the PARTITION BY clause to group by customer_id, and using the ORDER BY clause to sort by total_amount from highest to lowest.

You can see that the window function retains the original order details while calculating the order amount ranking for each customer.



### Exercise

Assume there is a student table `student`, containing the following fields: `id` (student ID), `name` (name), `age` (age), `score` (score), `class_id` (class ID).

Please write an SQL query to return the detailed information of each student (field order should be consistent with the original table's field order), and calculate the score ranking (`ranking`) of students within each class in descending order of score.

