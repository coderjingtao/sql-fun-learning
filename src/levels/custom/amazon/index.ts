import md from "./README.md?raw";
import sql from "./createTable.sql?raw";

export default {
  key: "ecommerce_analysis",
  title: "Amazon Shop",
  initSQL: sql,
  content: md,
  defaultSQL: "select * from order_items",
  answer:
    "SELECT \n" +
    "    category,\n" +
    "    SUM(price * quantity) AS total_revenue,\n" +
    "    SUM(quantity) AS total_quantity\n" +
    "FROM \n" +
    "    order_items\n" +
    "GROUP BY \n" +
    "    category\n" +
    "ORDER BY \n" +
    "    total_revenue DESC;",
  hint: "Use GROUP BY to group by category, SUM function to calculate totals, ORDER BY to sort",
  type: "custom",
  difficulty: 2,
} as LevelType;
