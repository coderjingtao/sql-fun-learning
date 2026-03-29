## 8. Basic Syntax - Conditional Query - Fuzzy Query

### Tutorial

Fuzzy query is a special type of conditional query that allows us to find data matching specific conditions based on pattern matching, using the LIKE keyword.

In LIKE fuzzy queries, we use wildcards to represent zero or more characters, enabling us to quickly find matching data.

There are 2 types of wildcards:
- Percent sign (%): Represents any sequence of characters of any length.
- Underscore (_): Represents any single character.

Application scenario for fuzzy query: Imagine you are a detective, and you need to find a target based on partial clues. For example, you can search based on keywords or characters contained in the target's name.



### Example

Assume there is a data table named `employees`, which stores employee information, including employee name (name), age (age), position (position), etc.:

Data table `employees`:

|   name   | age | position         |
|----------|-----|------------------|
|   Tom    |  25 | Software Engineer|
|   Lucy   |  30 | Data Analyst     |
|   Jack   |  28 | Product Manager  |
|   Steve  |  22 | QA Engineer      |



Now, let's use LIKE fuzzy query to find employee information where the name contains the keyword "Tom":

```sql
-- SQL query statement
select name, age, position from employees where name like '%Tom%';
```



Query result:

|   name   | age | position         |
|----------|-----|------------------|
|   Tom    |  25 | Software Engineer|



You can also use fuzzy query to match the beginning and ending:

```sql
-- Only query data rows starting with "T"
select name, age, position from employees where name like 'T%';

-- Only query data rows ending with "m"
select name, age, position from employees where name like '%m';
```



Similarly, you can use `not like` to query information that does not contain a certain keyword.



### Exercise

Please write an SQL query statement to select the name and score of all students from the data table named `student`, where the name does not contain the letter "J".

