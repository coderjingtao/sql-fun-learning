## 1.Basic Syntax - Query - Full Table Query

### Tutorial

At the starting point of SQL learning, we need to understand some basic concepts, including databases, data tables, SQL, select queries, and full table queries.

A database is a repository specifically designed to store and manage data. Think of a database as a large library that can store vast amounts of information. Within this library, we can set up various bookshelves, with each bookshelf representing a data table.

A bookshelf holds many books. Each row in a data table is like a book, and each column represents the book's attributes, such as the book's title, publication date, and so on.

SQL (Structured Query Language) is a standardized language used to manage, manipulate, and query databases. It is widely used in various types of databases, such as MySQL, PostgreSQL, Oracle, Microsoft SQL Server, and more. In this tutorial series, we will introduce SQL query learning using universal SQL syntax.

SQL syntax is simple and easy to learn. It uses a structure similar to natural language, making it convenient for developers and database administrators to perform database operations and management. Whether for web applications, enterprise software, or large-scale data systems, SQL is the foundation and core of database operations.

How do we use SQL to query data from a database?

First, let's understand the select query. It's like finding books we're interested in at a library. We can use select queries to retrieve the information we need from data tables, just like finding the books we want to read through the library catalog.

The select query statement has many syntax variations. In this section, we will learn the simplest and most direct one: **full table query**.

When we use an SQL statement like `select * from table_name`, we are performing a full table query. It returns all rows in the data table, allowing us to get a comprehensive view of the data in the table.

### Example

Let's assume we have a data table named `student` that stores student information, including student ID, name, age, etc.

Now, let's use the select full table query statement to view the entire contents of the student table.

Data table `student`:

| Student ID | Name | Age |
| ---------- | ---- | --- |
| 101        | Tom  | 20  |
| 102        | Lucy | 22  |
| 103        | Jack | 21  |
| 104        | Lily | 19  |

SQL query statement:

```sql
select * from student;
```

Query result:

| Student ID | Name | Age |
| ---------- | ---- | --- |
| 101        | Tom  | 20  |
| 102        | Lucy | 22  |
| 103        | Jack | 21  |
| 104        | Lily | 19  |

Through the above SQL query statement, we have retrieved all student information from the student table. Isn't it simple?

Try to complete the following exercise~

### Exercise

Please write an SQL query statement to retrieve all student information from the data table named `student`.
