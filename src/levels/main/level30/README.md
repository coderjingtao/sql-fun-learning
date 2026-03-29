## Advanced Query - Window Functions - LAG / LEAD

### Tutorial
Window functions LAG and LEAD are used to get values from rows before or after the current row. These two functions are very useful when you need to compare adjacent row data or perform time series analysis.

1) LAG Function

The LAG function is used to get the value of a column **before the current row**. It helps us view the data from the previous row.

The syntax of the LAG function is as follows:

```sql
LAG(column_name, offset, default_value) OVER (PARTITION BY partition_column ORDER BY sort_column)
```

Parameter explanation:

- `column_name`: The name of the column to get the value from.
- `offset`: Indicates the number of rows to look back. For example, an offset of 1 means getting the value from the previous row, an offset of 2 means getting the value from two rows before, and so on.
- `default_value`: Optional parameter, used to specify the default value when there is no previous row.
- `PARTITION BY` and `ORDER BY` clauses are optional, used for grouping and sorting data.



2) LEAD Function

The LEAD function is used to get the value of a column **after the current row**. It helps us view the data from the next row.

The syntax of the LEAD function is as follows:

```sql
LEAD(column_name, offset, default_value) OVER (PARTITION BY partition_column ORDER BY sort_column)
```

Parameter explanation:

- `column_name`: The name of the column to get the value from.
- `offset`: Indicates the number of rows to look forward. For example, an offset of 1 means getting the value from the next row, an offset of 2 means getting the value from two rows after, and so on.
- `default_value`: Optional parameter, used to specify the default value when there is no next row.
- `PARTITION BY` and `ORDER BY` clauses are optional, used for grouping and sorting data.



### Example

Here is an example. Suppose we have a student scores table `scores`, which contains student scores and exam dates:

| student_id | exam_date  | score |
| ---------- | ---------- | ----- |
| 101        | 2023-01-01 | 85    |
| 101        | 2023-01-05 | 78    |
| 101        | 2023-01-10 | 92    |
| 101        | 2023-01-15 | 80    |



Now we want to query each student's exam date and the previous exam score, as well as the next exam score. Example SQL is as follows:

```sql
SELECT
    student_id,
    exam_date,
    score,
    LAG(score, 1, NULL) OVER (PARTITION BY student_id ORDER BY exam_date) AS previous_score,
    LEAD(score, 1, NULL) OVER (PARTITION BY student_id ORDER BY exam_date) AS next_score
FROM
    scores;
```

The result will be:

| student_id | exam_date  | score | previous_score | next_score |
| ---------- | ---------- | ----- | -------------- | ---------- |
| 101        | 2023-01-01 | 85    | NULL           | 78         |
| 101        | 2023-01-05 | 78    | 85             | 92         |
| 101        | 2023-01-10 | 92    | 78             | 80         |
| 101        | 2023-01-15 | 80    | 92             | NULL       |

In the above example, we use the LAG function to get each student's previous exam score (previous_score), and the LEAD function to get each student's next exam score (next_score). If there is no previous or next exam, the corresponding column will display NULL.




### Exercise
Assume there is a student table `student`, containing the following fields: `id` (student ID), `name` (name), `age` (age), `score` (score), `class_id` (class ID).

Please write an SQL query to return the detailed information of each student (field order should be consistent with the original table's field order), and get the name of the student ranked immediately before (prev_name) and after (next_name) within each class in descending order of score.

