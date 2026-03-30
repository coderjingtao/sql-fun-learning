import md from "./README.md?raw";
import sql from "./createTable.sql?raw";

export default {
  key: "ecommerce_user_behavior_analysis",
  title: "eBay User Secrets",
  initSQL: sql,
  content: md,
  defaultSQL: "select * from ecommerce_behavior",
  answer:
    "SELECT \n" +
    "    age_group,\n" +
    "    COUNT(*) AS user_count,\n" +
    "    ROUND(AVG(total_amount), 2) AS avg_amount,\n" +
    "    ROUND(AVG(total_orders), 1) AS avg_orders,\n" +
    "    ROUND(AVG(avg_order_amount), 2) AS avg_order_value,\n" +
    "    ROUND(AVG(CASE WHEN is_vip = 1 THEN 100.0 ELSE 0 END), 1) || '%' AS vip_ratio,\n" +
    "    ROUND(AVG(CASE WHEN gender = 'Male' THEN 100.0 ELSE 0 END), 1) || '%:' ||\n" +
    "    ROUND(AVG(CASE WHEN gender = 'Female' THEN 100.0 ELSE 0 END), 1) || '%' AS gender_ratio,\n" +
    "    (\n" +
    "        SELECT favorite_category \n" +
    "        FROM ecommerce_behavior e2 \n" +
    "        WHERE CASE \n" +
    "            WHEN e2.age < 30 THEN 'Young'\n" +
    "            WHEN e2.age BETWEEN 30 AND 49 THEN 'Middle-aged'\n" +
    "            ELSE 'Senior'\n" +
    "        END = age_group \n" +
    "        GROUP BY favorite_category \n" +
    "        ORDER BY SUM(total_amount) DESC \n" +
    "        LIMIT 1\n" +
    "    ) AS popular_category\n" +
    "FROM (\n" +
    "    SELECT *,\n" +
    "        CASE \n" +
    "            WHEN age < 30 THEN 'Young'\n" +
    "            WHEN age BETWEEN 30 AND 49 THEN 'Middle-aged'\n" +
    "            ELSE 'Senior'\n" +
    "        END AS age_group\n" +
    "    FROM ecommerce_behavior\n" +
    ") t\n" +
    "GROUP BY \n" +
    "    age_group\n" +
    "ORDER BY \n" +
    "    avg_amount DESC;",
  hint: "Use CASE WHEN for age grouping, subquery to find popular category, calculate VIP ratio and gender ratio",
  type: "custom",
  difficulty: 3,
} as LevelType;
