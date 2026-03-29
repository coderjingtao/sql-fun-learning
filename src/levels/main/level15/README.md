## 15. Functions - String Processing

### Tutorial

In SQL, string processing functions are a category of functions used to handle text data. They allow us to perform various operations on strings, such as converting case, calculating string length, and searching and replacing substrings. String processing functions help us process and transform strings in the database to meet different needs.

### Example

Assume there is an employees table `employees`, containing the following fields: `id` (employee ID), `name` (employee name). Data as follows:

| id  | name    |
| --- | ------- |
| 1   | Tom     |
| 2   | Michael |
| 3   | Sarah   |
| 4   | James   |

1. Use the string processing function `UPPER` to convert names to uppercase:

```sql
-- Convert names to uppercase
SELECT name, UPPER(name) AS upper_name
FROM employees;
```

Query result:

| name    | upper_name |
| ------- | ---------- |
| Tom     | TOM        |
| Michael | MICHAEL    |
| Sarah   | SARAH      |
| James   | JAMES      |

2. Use the string processing function `LENGTH` to calculate name length:

```sql
-- Calculate name length
SELECT name, LENGTH(name) AS name_length
FROM employees;
```

Query result:

| name    | name_length |
| ------- | ----------- |
| Tom     | 3           |
| Michael | 7           |
| Sarah   | 5           |
| James   | 5           |

3. Use the string processing function `LOWER` to convert names to lowercase:

```sql
-- Convert names to lowercase and perform conditional filtering
SELECT name, LOWER(name) AS lower_name
FROM employees;
```

Query result:

| name    | lower_name |
| ------- | ---------- |
| Tom     | tom        |
| Michael | michael    |
| Sarah   | sarah      |
| James   | james      |

### Exercise

Assume there is a student table `student`, containing the following fields: `id` (student ID), `name` (name). Please write an SQL query to filter out the student named 'Michael', displaying their student ID (id), name (name), and uppercase name (upper_name).
