## 17. Grouping & Aggregation - Single Field Grouping

### Tutorial
In SQL, grouping and aggregation is an operation that classifies data and performs aggregate calculations on each category. It allows us to group data by specified columns or fields, and then apply aggregate functions such as COUNT, SUM, AVG, etc. to each group to obtain summarized results after grouping.

Example: A school can group students by class and perform statistics on each class. Check how many students are in each class, and the average score of each class. This way we can have an overall understanding of the student situation in each class of the school, rather than just looking at individual student information.

In SQL, the `GROUP BY` keyword is typically used to group data.



### Example
Assume there is an orders table `orders`, containing the following fields: `order_id`, `customer_id`, `amount`. Data as follows:

| order_id | customer_id | amount |
|---------|-------------|--------|
| 1       | A001        | 100    |
| 2       | A002        | 200    |
| 3       | A001        | 150    |
| 4       | A003        | 50     |



1) Use grouping and aggregation to query the customer IDs in the table:

```sql
SELECT customer_id
FROM orders
GROUP BY customer_id;
```

Query result:

| customer_id |
| ----------- |
| A001        |
| A002        |
| A003        |



2) Use grouping and aggregation to query the number of orders for each customer:

```sql
SELECT customer_id, COUNT(order_id) AS order_num
FROM orders
GROUP BY customer_id;
```

Query result:

| customer_id | order_num |
| ----------- | --------- |
| A001        | 2         |
| A002        | 1         |
| A003        | 1         |



### Exercise

Assume there is a student table `student`, containing the following fields: `id` (student ID), `name` (name), `class_id` (class ID), `score` (score). Please write an SQL query to count the class ID (class_id) and the average score (avg_score) of each class in the student table.

