## 3. Basic Syntax - Query - Alias

### Tutorial

An alias is a temporary, more readable name given to a column in a data table or a field in query results, making the results more intuitive and easier to read.

Let's use an analogy to understand "alias": Imagine you are a team leader, and your team has many members, each with their own name. To better manage the team, you decide to give each member a nickname to make communication within the team more convenient. This nickname is an "alias". It doesn't change the member's real information, but simply provides a convenient way to address them within the team.

In SQL queries, we can use the alias syntax `{original_field_name} as {alias}` to give the column names in query results a more understandable name. By using aliases, we can more intuitively understand the meaning of each column in the query results, making them easier to read and use.



### Example

Assume there is a data table named `employees`, which stores team member information, including name, age, position, etc.:

Data table `employees`:

|   name   | age | position      |
|----------|-----|---------------|
|   John   | 30  | Project Manager|
|   Alice  | 28  | Software Engineer|
|   Bob    | 32  | Product Designer|
|   Kate   | 26  | Marketing Specialist|

Now, let's use "alias" to get the name and position information of all team members, and give them aliases as `employee_name` and `job_title`:

```sql
-- SQL query statement
select name as employee_name, position as job_title from employees;
```

> The `as` keyword in the above code can also be omitted. For example, `name employee_name` is also valid.



Query result - note how the column headers changed from the original field names to the aliases:

|   employee_name   | job_title            |
|---------------|-------------------|
|   John        | Project Manager    |
|   Alice       | Software Engineer  |
|   Bob         | Product Designer   |
|   Kate        | Marketing Specialist |



Through the above SQL query statement, we obtained the name and position information of all members in the team roster, and made the query results more readable and intuitive by using aliases.



### Exercise

Please write an SQL query statement to select the name and age information of all students from the data table named `student`, and give them aliases as `student_name` and `student_age`.

