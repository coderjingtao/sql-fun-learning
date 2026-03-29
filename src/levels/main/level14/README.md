## 14. Functions - Time Functions

### Tutorial
In SQL, time functions are special functions used to handle dates and times. They allow us to manipulate and process date, time, and datetime data in queries, making time-related operations in databases more convenient and flexible.

Common time functions include:

- DATE: Get the current date
- DATETIME: Get the current datetime
- TIME: Get the current time



### Example
Assume there is an orders table `orders`, containing the following fields: `order_id`, `order_date`, `order_time`. Data as follows:

| order_id | order_date  | order_time |
|---------|-------------|------------|
| 1       | 2023-08-01  | 12:30:45   |
| 2       | 2023-08-01  | 14:20:10   |
| 3       | 2023-08-02  | 09:15:00   |
| 4       | 2023-08-02  | 18:05:30   |



Use time functions to get the current date, current datetime, and current time:

```sql
-- Get current date
SELECT DATE() AS current_date;

-- Get current datetime
SELECT DATETIME() AS current_datetime;

-- Get current time
SELECT TIME() AS current_time;
```



Query result:

> For easy comparison, put in the same table

| current_date | current_datetime       | current_time |
|--------------|------------------------|--------------|
| 2023-08-01   | 2023-08-01 14:30:00    | 14:30:00     |



> Note: The date, datetime, and time here will be generated based on the current system time. Actual results may vary depending on the current time.



There are many other time functions, such as calculating the number of days between two dates, getting the milliseconds corresponding to the current date, etc. You can look them up yourself when needed. They will not be described in detail here.



### Exercise

Assume there is a student table `student`, containing the following fields: `name`, `age`.

Please write an SQL query to display all students' names (name) and the current date (column alias as "current_date").

