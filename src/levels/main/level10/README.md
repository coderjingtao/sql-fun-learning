## 10. Basic Syntax - Deduplication

### Tutorial
In data tables, there may be duplicate data records. If we want to filter out duplicate records and keep only distinct records, we need to use SQL's deduplication feature.

In SQL, we can use the `DISTINCT` keyword to perform deduplication.

Application scenario: Suppose you are a class monitor and need to count the different students in the class without caring about how many times they appear, you can use deduplication.



### Example
Assume there is a data table named `students`, which stores student information, including student name (name), class ID (class_id), exam number (exam_num), score (score), etc.:

Data table `students`:

|   name   | class_id | exam_num | score |
|----------|----------|----------|-------|
|   Tom    |   1      | 1        | 90    |
|   Lucy   |   2      | 2        | 85    |
|   Jack   |   1      | 1        | 92    |
|   Lucy   |   2      | 3        | 88    |



Now, let's use the `DISTINCT` keyword to find different class IDs:

```sql
-- SQL query statement
select distinct class_id from students;
```



Query result:

| class_id |
|----------|
|   1      |
|   2      |



Besides deduplicating by a single field, the `DISTINCT` keyword also supports deduplication based on a combination of multiple fields, ensuring that the combination of multiple fields is unique.

Example syntax:

```sql
distinct field1, field2, field3, ...
```



### Exercise

Please write an SQL query statement to select all unique combinations of class ID (class_id) and exam number (exam_num) from the data table named `student`.

