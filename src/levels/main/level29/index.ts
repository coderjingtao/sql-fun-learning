import md from "./README.md?raw";
import sql from "./createTable.sql?raw";

export default {
  key: "level29",
  title: "Advanced Query - Window Functions - ROW_NUMBER",
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
    "    ROW_NUMBER() OVER (PARTITION BY class_id ORDER BY score DESC) AS row_number\n" +
    "FROM\n" +
    "    student;",
  hint: "Please carefully review the example provided in this level",
  type: "main",
} as LevelType;
