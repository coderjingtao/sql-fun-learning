import md from "./README.md?raw";
import sql from "./createTable.sql?raw";

export default {
  key: "level26",
  title: "Advanced Query - Window Functions - SUM OVER",
  initSQL: sql,
  content: md,
  defaultSQL: "select * from student",
  answer:
    "SELECT \n" +
    "    id,\n" +
    "    name,\n" +
    "    age,\n" +
    "    class_id,\n" +
    "    score,\n" +
    "    exam_num,\n" +
    "    AVG(score) OVER (PARTITION BY class_id) AS class_avg_score\n" +
    "FROM\n" +
    "    student;",
  hint: "Which aggregate function should be used to calculate the average?",
  type: "main",
} as LevelType;
