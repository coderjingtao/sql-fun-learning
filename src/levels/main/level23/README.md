## 23. Advanced Query - Subquery

### Tutorial
A subquery refers to **nesting** a complete query statement inside another query statement. The inner query is called a subquery. Subqueries can be used to obtain more complex query results or to filter data.

When executing a query statement containing a subquery, the database engine will first execute the subquery, then use its result as a condition or data source to execute the outer query.

As an analogy, a subquery is like a box within a box. The outer query is the big box, and the inner query is the small box. When executing the query, we first open the small box to get the result, then put the small box's result into the big box to continue processing.



### Example
Assume we have the following two data tables: `orders` and `customers`, containing order information and customer information respectively.

orders table:

| order_id | customer_id | order_date | total_amount |
|----------|-------------|------------|--------------|
| 1        | 101         | 2023-01-01 | 200          |
| 2        | 102         | 2023-01-05 | 350          |
| 3        | 101         | 2023-01-10 | 120          |
| 4        | 103         | 2023-01-15 | 500          |



customers table:

| customer_id | name     | city       |
|-------------|----------|------------|
| 101         | Alice    | New York   |
| 102         | Bob      | Los Angeles|
| 103         | Charlie  | Chicago    |



Now, we want to query the name and city information of customers whose total order amount > 200. Example SQL as follows:

```sql
-- Main query
SELECT name, city
FROM customers
WHERE customer_id IN (
    -- Subquery
    SELECT DISTINCT customer_id
    FROM orders
    WHERE total_amount > 200
);
```



In the above SQL, we first filter and query the eligible customer IDs from the orders table through the subquery, then query the customer information from the customer information table based on the customer IDs. This way we can query much less customer information data.

Query result of the above statement:

| name    | city        |
| ------- | ----------- |
| Bob     | Los Angeles |
| Charlie | Chicago     |



### Exercise

Assume there is a student table `student`, containing the following fields: `id` (student ID), `name` (name), `age` (age), `score` (score), `class_id` (class ID). There is also a class table `class`, containing the following fields: `id` (class ID), `name` (class name).

Please write an SQL query using a subquery to get all data of students who have a corresponding class, returning student name (`name`), score (`score`), class ID (`class_id`) fields.

