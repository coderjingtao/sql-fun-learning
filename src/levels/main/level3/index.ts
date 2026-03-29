import md from "./README.md?raw";
import sql from "./createTable.sql?raw";

export default {
  key: "level3",
  title: "Basic Syntax - Query - Alias",
  initSQL: sql,
  content: md,
  defaultSQL: "select * from student",
  answer: "select name as student_name, age as student_age from student",
  hint: "Please carefully review the example provided in this level",
  type: "main",
} as LevelType;
