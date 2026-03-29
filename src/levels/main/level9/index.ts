import md from "./README.md?raw";
import sql from "./createTable.sql?raw";

export default {
  key: "level9",
  title: "Basic Syntax - Conditional Query - Logical Operators",
  initSQL: sql,
  content: md,
  defaultSQL: "select * from student",
  answer:
    "select name, score from student where name like '%J%' or score > 500;",
  hint: "Please carefully review the example provided in this level",
  type: "main",
} as LevelType;
