## 13. Basic Syntax - Conditional Branching

### Tutorial

Conditional branching `case when` is a syntax in SQL used to handle branching based on conditions. It is similar to if-else conditional statements in other programming languages, allowing us to choose different results to return based on different conditions.

Using `case when`, we can dynamically generate new columns in query results or transform existing columns based on specific conditions.

Example: Suppose you are a restaurant waiter, and customers order different dishes. You need to determine the service method based on what the customer orders. If a customer orders fish, you will serve them with tableware and service suitable for eating fish; if a customer orders steak, you will use tableware and service suitable for steak. `case when` is like the process of choosing different service methods based on the dishes customers order.



### Example
Assume there is a student table `student`, containing the following fields: `name`, `age`. Data as follows:

| name  | age |
|-------|-----|
| Tom   | 18  |
| James | 25  |
| Lucy  | 30  |
| Jack  | 40  |



Use conditional branching `case when` to determine whether a student can rap based on name, and alias it as can_rap.

Example SQL as follows:

```sql
SELECT
  name,
  CASE WHEN (name = 'James') THEN 'Yes' ELSE 'No' END AS can_rap
FROM
  student;
```



Query result:

| name  | can_rap |
|-------|---------|
| Tom   | No      |
| James | Yes     |
| Lucy  | No      |
| Jack  | No      |



`case when` supports specifying multiple branches simultaneously, example syntax as follows:

```sql
CASE WHEN (condition1) THEN result1
     WHEN (condition2) THEN result2
     ...
     ELSE other_result END
```



### Exercise

Assume there is a student table `student`, containing the following fields: `name`, `age`. Please write an SQL query to classify students into three age levels (age_level): above 60 as "Senior", above 20 (excluding those above 60) as "Young", 20 and below as well as those without age information as "Junior".

The result should include student name (name) and age level (age_level), sorted by name in ascending order.

