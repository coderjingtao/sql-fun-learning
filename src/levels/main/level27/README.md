## 27. Advanced Query - Window Functions - SUM OVER ORDER BY

### Tutorial
In the previous tutorial, we covered the sum over window function and used it to implement group statistics.

In this tutorial, we will learn another usage of the sum over function: sum over order by, which can implement **cumulative sum** within a group.

Example usage as follows:

```sql
SUM(calculation_field_name) OVER (PARTITION BY grouping_field_name ORDER BY sorting_field sorting_rule)
```



Let's take an application scenario: A teacher calls roll in each class one by one. Each time a student is called, the teacher records the sum of the scores of all students who have been called so far.



### Example
Assume we have an orders table `orders`, table data as follows:

| order_id | customer_id | order_date | total_amount |
|----------|-------------|------------|--------------|
| 1        | 101         | 2023-01-01 | 200          |
| 2        | 102         | 2023-01-05 | 350          |
| 3        | 101         | 2023-01-10 | 120          |
| 4        | 103         | 2023-01-15 | 500          |



Now, we want to calculate the cumulative historical order amount for each customer, and display the details of each order.

```sql
SELECT
    order_id,
    customer_id,
    order_date,
    total_amount,
    SUM(total_amount) OVER (PARTITION BY customer_id ORDER BY order_date) AS cumulative_amount
FROM
    orders;
```



Query result:

| order_id | customer_id | order_date  | total_amount | cumulative_amount |
|----------|-------------|-------------|--------------|-------------------|
| 1        | 101         | 2023-01-01  | 200          | 200               |
| 3        | 101         | 2023-01-10  | 120          | 320               |
| 2        | 102         | 2023-01-05  | 350          | 350               |
| 4        | 103         | 2023-01-15  | 500          | 500               |



In the above example, we use the sum over window function to calculate the cumulative order amount for each customer (cumulative_amount), and use the ORDER BY clause to sort by order_date, so that the cumulative amount is calculated in the order of dates.



### Exercise

Assume there is a student table `student`, containing the following fields: `id` (student ID), `name` (name), `age` (age), `class_id` (class ID), `score` (score), `exam_num` (exam number).

Please write an SQL query to return detailed information of each student (field order consistent with original table), and calculate the cumulative score sum of each student in the same class by student ID (cumulative_score_sum), sorted by student ID ascending.

