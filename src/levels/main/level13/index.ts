import md from "./README.md?raw";
import sql from "./createTable.sql?raw";

export default {
  key: "level13",
  title: "Basic Syntax - Conditional Branching",
  initSQL: sql,
  content: md,
  defaultSQL: "select * from student",
  answer:
    "SELECT\n" +
    "  name,\n" +
    "  CASE WHEN (age > 60) THEN 'Senior'\n" +
    "       WHEN (age > 20) THEN 'Young'\n" +
    "       ELSE 'Junior' END AS age_level\n" +
    "FROM\n" +
    "  student\n" +
    "ORDER BY\n" +
    "  name asc;",

  hint: "Need to use CASE WHEN to specify multiple branches",
  type: "main",
} as LevelType;
