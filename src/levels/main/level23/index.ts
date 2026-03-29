import md from "./README.md?raw";
import sql from "./createTable.sql?raw";

export default {
  key: "level23",
  title: "Advanced Query - Subquery",
  initSQL: sql,
  content: md,
  defaultSQL: "select * from student",
  answer:
    "select name, score, class_id from student where class_id in (select distinct id from class);",
  hint: "First query all class IDs, then query student information where the ID is in all class IDs",
  type: "main",
} as LevelType;
