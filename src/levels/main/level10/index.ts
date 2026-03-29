import md from "./README.md?raw";
import sql from "./createTable.sql?raw";

export default {
  key: "level10",
  title: "Basic Syntax - Deduplication",
  initSQL: sql,
  content: md,
  defaultSQL: "select * from student",
  answer: "select distinct class_id, exam_num from student;",
  hint: "Need to use multi-field deduplication",
  type: "main",
} as LevelType;
