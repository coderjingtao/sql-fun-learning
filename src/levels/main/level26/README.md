## 26. Advanced Query - Window Functions - SUM OVER

### Tutorial
In SQL, window functions are a powerful query tool that allows us to perform calculations on grouped data within a query, **while retaining the detailed information of original rows**.

Window functions can be combined with aggregate functions (such as SUM, AVG, COUNT, etc.), but unlike regular aggregate functions, window functions do not reduce the number of rows in the result set.

As an analogy, you can think of a window function as a "perspective lens" that allows us to focus on a specific group while still seeing the overall panorama.

In this section, we'll first cover the first window function: SUM OVER.

The syntax of this function is:

```sql
SUM(calculation_field_name) OVER (PARTITION BY grouping_field_name)
```



### Example
Assume we have an orders table `orders`, table data as follows:

| order_id | customer_id | order_date | total_amount |
|----------|-------------|------------|--------------|
| 1        | 101         | 2023-01-01 | 200          |
| 2        | 102         | 2023-01-05 | 350          |
| 3        | 101         | 2023-01-10 | 120          |
| 4        | 103         | 2023-01-15 | 500          |



Now, we want to calculate the total order amount for each customer, and display the details of each order.

Example SQL as follows:

```sql
SELECT
    order_id,
    customer_id,
    order_date,
    total_amount,
    SUM(total_amount) OVER (PARTITION BY customer_id) AS customer_total_amount
FROM
    orders;
```



Query result:

| order_id | customer_id | order_date  | total_amount | customer_total_amount |
|----------|-------------|-------------|--------------|-----------------------|
| 1        | 101         | 2023-01-01  | 200          | 320                   |
| 3        | 101         | 2023-01-10  | 120          | 320                   |
| 2        | 102         | 2023-01-05  | 350          | 350                   |
| 4        | 103         | 2023-01-15  | 500          | 500                   |



In the above example, we use the window function SUM to calculate the total order amount for each customer (customer_total_amount), and use the PARTITION BY clause to group by customer_id. From the first two rows, we can see that the window function retains the detailed information of the original orders while calculating the total order amount for each customer.



### Exercise

Assume there is a student table `student`, containing the following fields: `id` (student ID), `name` (name), `age` (age), `class_id` (class ID), `score` (score), `exam_num` (exam number).

Please write an SQL query to return the detailed information of each student (field order consistent with the original table), and calculate the average score of students in each class (class_avg_score).

