## 12. Basic Syntax - Truncation and Offset

### Tutorial

Let's use an analogy to introduce the concepts of truncation and offset.

Suppose you have a to-do list with many tasks. When you only want to view a few tasks at a time, what would you do?

1) You can use your finger to cover the parts you don't need to see (truncation)

2) Based on task numbers, you can directly flip to the position you need to view (offset)



In SQL, we use the `LIMIT` keyword to implement data truncation and offset.

A typical application scenario for truncation and offset is pagination - when a website has a lot of content, users can view only partial data at a time based on page numbers.



### Example
Assume there is a data table named `tasks`, which stores to-do items information, including task name (task_name) and due date (due_date), etc.

Data table `tasks`:

|    task_name   | due_date  |
|----------------|-----------|
|  Finish report | 2023-08-05|
|  Book doctor   | 2023-08-08|
|  Buy gift      | 2023-08-10|
|  Plan trip     | 2023-08-15|



Now, let's use the `LIMIT` keyword for pagination queries:

```sql
-- LIMIT followed by a single integer, indicating the number of data rows to truncate (how many to fetch at once)
select task_name, due_date from tasks limit 2;

-- LIMIT followed by 2 integers,依次表示从第几条数据开始、一次获取几条
select task_name, due_date from tasks limit 2, 2;
```



Query statement 1 result, only 2 rows of data fetched:

|   task_name   | due_date  |
|---------------|-----------|
|  Finish report | 2023-08-05|
|  Book doctor   | 2023-08-08|



Query statement 2 result, starting from index 2 (the 3rd row), fetch 2 rows of data:

|   task_name   | due_date  |
|---------------|-----------|
|  Buy gift      | 2023-08-10|
|  Plan trip     | 2023-08-15|



Through the above SQL query statements, we selected the first two tasks and two tasks starting from the third task in the to-do list, achieving data truncation and offset.



### Exercise

Please write an SQL query statement to select student name (name) and age (age) from the data table named `student`, sorted by age from youngest to oldest, starting from the 2nd row, fetch 3 students' information.

