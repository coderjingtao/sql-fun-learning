import md from "./README.md?raw";
import sql from "./createTable.sql?raw";

export default {
  key: "restaurant_business_analysis",
  title: "Restaurant Empire",
  initSQL: sql,
  content: md,
  defaultSQL: "select * from restaurant_orders",
  answer:
    "SELECT \n" +
    "    dish_category,\n" +
    "    SUM(dish_price * quantity) AS total_sales,\n" +
    "    COUNT(*) AS order_count,\n" +
    "    ROUND(AVG(dish_price), 2) AS avg_price,\n" +
    "    ROUND(AVG(is_member) * 100, 1) || '%' AS member_ratio\n" +
    "FROM \n" +
    "    restaurant_orders\n" +
    "GROUP BY \n" +
    "    dish_category\n" +
    "ORDER BY \n" +
    "    total_sales DESC;",
  hint: "Use GROUP BY to group by dish category, calculate sales, order count, average price and member ratio",
  type: "custom",
  difficulty: 1,
} as LevelType;
