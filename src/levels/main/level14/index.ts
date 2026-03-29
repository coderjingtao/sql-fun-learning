import md from "./README.md?raw";
import sql from "./createTable.sql?raw";

export default {
  key: "level14",
  title: "Functions - Time Functions",
  initSQL: sql,
  content: md,
  defaultSQL: "select * from student",
  answer: "select name, date() as current_date from student",
  hint: "Please carefully review the example provided in this level",
  type: "main",
} as LevelType;
