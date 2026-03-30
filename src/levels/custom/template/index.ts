import md from "./README.md?raw";
import sql from "./createTable.sql?raw";

export default {
  key: "level_english_name",
  title: "Custom Level English Name",
  // Initialize table creation SQL statement
  initSQL: sql,
  // Level tutorial Markdown document
  content: md,
  // Default statement executed after level initialization, usually a full table query
  defaultSQL: "select * from magic_scores",
  // Level standard answer
  answer:
    "SELECT \n" +
    "    student_id,\n" +
    "    student_name,\n" +
    "    subject_id,\n" +
    "    subject_name,\n" +
    "    score,\n" +
    "    RANK() OVER (PARTITION BY subject_id ORDER BY score DESC) AS score_rank\n" +
    "FROM \n" +
    "    magic_scores;",
  // Level hint
  hint: "Window Functions",
  // Level category
  type: "custom",
  difficulty: 1,
} as LevelType;
