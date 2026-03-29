## 2. Basic Syntax - Query - Select Query

### Tutorial

Select query is the most basic query type in SQL. It is used to select **specific columns or fields** from a data table and return only the data values of those columns.

The SQL syntax for a select query is `SELECT {column_name...}`, which tells the database which columns we want to view.

Let's use an analogy to understand select queries: Imagine you are a class administrator, and your class has a student roster that lists each student's name, age, gender, score, and other information. Now, you want to know the names and ages of the students in your class, because this information helps you better understand each student's basic situation. So, you simply select the name and age columns from the student roster.

### Example

Assume there is a student data table named `students`, which stores information about students in the class, including name, age, gender, score, etc.

Data table `students`:

| name  | age | gender | score |
| ----- | --- | ------ | ----- |
| John  | 18  | Male   | 90    |
| Alice | 17  | Female | 88    |
| Bob   | 19  | Male   | 78    |
| Kate  | 18  | Female | 95    |

Now, let's use a "select query" to get the name and gender information of all students. The SQL statement is as follows:

```sql
select name, gender from students;
```

Query result:

| name  | gender |
| ----- | ------ |
| John  | Male   |
| Alice | Female |
| Bob   | Male   |
| Kate  | Female |

Through the above SQL query statement, we obtained the name and gender information of all students in the student roster.

### Exercise

Please write an SQL query statement to select the name and age information of all students from the data table named `student`.

Note: For all exercises, the **output order of data columns must be consistent with the requirements**! For example, in this exercise, the student name must come first, followed by age.

