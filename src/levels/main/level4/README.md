## 4.Basic Syntax - Query - Constants and Operations

### Tutorial

"Constants and Operations" are important concepts in SQL used to calculate and process data. In SQL queries, constants refer to fixed numerical values or text (such as "1"), while operations refer to mathematical calculations or string manipulations performed on these constants.

Through constants and operations, we can perform addition, subtraction, multiplication, division, calculate averages, concatenate text, and more on data within query statements to get the desired query results.

### Example

Let's look at a specific SQL code and result example. Assume there is a data table named `orders`, which stores order information, including order ID (order_id), unit price (unit_price), quantity purchased (quantity), etc.:

Data table `orders`:

| order_id | unit_price | quantity |
| -------- | ---------- | -------- |
| 1001     | 10.00      | 5        |
| 1002     | 20.00      | 3        |
| 1003     | 15.00      | 2        |
| 1004     | 25.00      | 4        |

Now, we need to calculate the total amount (total_amount) for each order, which is the unit price (unit_price) multiplied by the quantity purchased (quantity).

The SQL query statement is as follows:

```sql
select order_id, unit_price, quantity, unit_price * quantity as total_amount from orders;
```

The query result is shown below, where total_amount is the newly calculated column:

| order_id | unit_price | quantity | total_amount |
| -------- | ---------- | -------- | ------------ |
| 1001     | 10.00      | 5        | 50.00        |
| 1002     | 20.00      | 3        | 60.00        |
| 1003     | 15.00      | 2        | 30.00        |
| 1004     | 25.00      | 4        | 100.00       |

In addition, SQL can directly use constants as column values. For example, executing the following SQL statement:

```sql
select 200, 'basketball' as hobby;
```

The query result is as follows:

| 200 | hobby      |
| :-- | :--------- |
| 200 | basketball |

### Exercise

Please write an SQL query statement to select the name and score of all students from the data table named `student`, and additionally calculate double the score (double_score).
