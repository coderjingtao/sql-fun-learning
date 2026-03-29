import md from "./README.md?raw";
import sql from "./createTable.sql?raw";

export default {
  key: "level20",
  title: "Advanced Query - Join Query - CROSS JOIN",
  initSQL: sql,
  content: md,
  defaultSQL: "select * from student",
  answer:
    "select s.name student_name, s.age student_age, s.class_id class_id, c.name class_name from student s, class c;",
  hint: "Please carefully review the example provided in this level",
  type: "main",
} as LevelType;
