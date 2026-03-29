import md from "./README.md?raw";
import sql from "./createTable.sql?raw";

export default {
  key: "level27",
  title: "Advanced Query - Window Functions - SUM OVER ORDER BY",
  initSQL: sql,
  content: md,
  defaultSQL: "select * from student",
  answer:
    "SELECT \n" +
    "    id,\n" +
    "    name,\n" +
    "    age,\n" +
    "    score,\n" +
    "    class_id,\n" +
    "    SUM(score) OVER (PARTITION BY class_id ORDER BY score ASC) AS class_sum_score\n" +
    "FROM\n" +
    "    student;",
  hint: "Please carefully review the example provided in this level",
  type: "main",
} as LevelType;
