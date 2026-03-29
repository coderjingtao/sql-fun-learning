## 24. Advanced Query - Subquery - EXISTS

### Tutorial

In the previous tutorial, we learned that subqueries are a powerful query tool that can be nested within main queries to help us perform more complex conditional filtering and data retrieval.

Among them, a special type of subquery is the "EXISTS" subquery, used to check whether records satisfying the condition exist in the main query's result set. It returns a boolean value (True or False) instead of returning actual data.

### Example

Assume we have the following two data tables: `orders` and `customers`, containing order information and customer information respectively.

orders table:

| order_id | customer_id | order_date | total_amount |
| -------- | ----------- | ---------- | ------------ |
| 1        | 101         | 2023-01-01 | 200          |
| 2        | 102         | 2023-01-05 | 350          |
| 3        | 101         | 2023-01-10 | 120          |
| 4        | 103         | 2023-01-15 | 500          |

customers table:

| customer_id | name    | city        |
| ----------- | ------- | ----------- |
| 101         | Alice   | New York    |
| 102         | Bob     | Los Angeles |
| 103         | Charlie | Chicago     |
| 104         | David   | Melbourne   |

Now, we want to query customers who have placed orders, that is, customers who exist in the orders table. We can use the EXISTS subquery:

```sql
-- Main query
SELECT name, city
FROM customers c
WHERE EXISTS (
    -- Subquery
    SELECT 1
    FROM orders o
    WHERE o.customer_id = c.customer_id
);
```

In the above SQL, the subquery checks whether each customer has a corresponding order record. If a record exists (returns True), the customer information will be included in the result.

Query result of the above statement:

| name    | city        |
| ------- | ----------- |
| Alice   | New York    |
| Bob     | Los Angeles |
| Charlie | Chicago     |

David doesn't have any orders, so it won't be included in the result.

The difference between EXISTS and IN:

- EXISTS checks for existence and returns a boolean value, suitable for checking whether related data exists
- IN checks whether a value is in a list, suitable for exact matching

### Exercise

Assume there is a student table `student`, containing the following fields: `id` (student ID), `name` (name), `age` (age), `score` (score), `class_id` (class ID). There is also a class table `class`, containing the following fields: `id` (class ID), `name` (class name).

Please write an SQL query using the EXISTS subquery to get all data of students who do **not** have a corresponding class, returning student name (`name`), age (`age`), class ID (`class_id`) fields.
