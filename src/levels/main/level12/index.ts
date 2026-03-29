import md from "./README.md?raw";
import sql from "./createTable.sql?raw";

export default {
  key: "level12",
  title: "Basic Syntax - Truncation and Offset",
  initSQL: sql,
  content: md,
  defaultSQL: "select * from student",
  answer: "select name, age from student order by age asc limit 1, 3;",
  hint: "Starting from the 2nd row, what should the first parameter of limit be?",
  type: "main",
} as LevelType;
