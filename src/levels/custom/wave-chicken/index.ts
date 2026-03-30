import md from "./README.md?raw";
import sql from "./createTable.sql?raw";

export default {
  key: "waveChicken",
  title: "The Wave Chicken",
  initSQL: sql,
  content: md,
  defaultSQL: "select * from chicken_observation",
  answer:
    "SELECT \n" +
    "    observer_name,\n" +
    "    observation_date,\n" +
    "    wave_intensity\n" +
    "FROM \n" +
    "    chicken_observation\n" +
    "WHERE \n" +
    "    observation_location LIKE '%Wave Chicken%' and wave_intensity > 5;",
  hint: "LIKE Fuzzy Query",
  type: "custom",
  difficulty: 1,
} as LevelType;
