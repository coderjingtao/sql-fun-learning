## 5. Basic Syntax - Conditional Query - WHERE

### Tutorial

In previous tutorials, we always queried all data rows in the entire table. But sometimes, we only want to retrieve partial data from the table. What should we do?

This is where we can use conditional query syntax. Through conditional queries, you can filter out data rows that **meet specific conditions** from the database, instead of returning all data in the table.

The main approach is to use the WHERE clause to set filter conditions in a query. Only data rows that meet these conditions will be returned.

The syntax for the WHERE clause is as follows:

```sql
SELECT column1, column2, ...
FROM table_name
WHERE condition;
```

Here, `column1, column2, ...` are the columns you want to select, which can be specific column names or `*` to select all columns. `table_name` is the name of the table from which you want to query data. `condition` is the specified query condition, which can be set using comparison operators (such as `=`, `<`, `>`, etc.), logical operators (such as `AND`, `OR`, etc.), IN operator, LIKE operator, etc.



### Example

Let's look at a specific SQL code and result example. Assume there is a data table named `products`, which stores product information, including product name (name), unit price (price), stock (stock), etc.:

Data table `products`:

|   name   | price | stock |
|----------|-------|-------|
|   A      | 10.00 |   50  |
|   B      | 20.00 |   30  |
|   C      | 15.00 |   20  |
|   D      | 25.00 |   10  |

Now, let's use "WHERE" to filter out products with stock less than or equal to 20:

```sql
-- SQL query statement
select name, price, stock from products where stock <= 20;
```



Query result:

|   name   | price | stock |
|----------|-------|-------|
|   C      | 15.00 |   20  |
|   D      | 25.00 |   10  |



Through the above SQL query statement, we filtered out products with stock less than or equal to 20, and obtained the product information that meets the conditions.



### Exercise

Please write an SQL query statement to select the name and score of all students from the data table named `student`, where the student name is 'Emma'.

