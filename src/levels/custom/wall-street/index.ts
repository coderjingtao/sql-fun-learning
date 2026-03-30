import md from "./README.md?raw";
import sql from "./createTable.sql?raw";

export default {
  key: "stock_trading_analysis",
  title: "Wall Street Storm",
  initSQL: sql,
  content: md,
  defaultSQL: "select * from client_transactions",
  answer:
    "SELECT \n" +
    "    client_name,\n" +
    "    SUM(quantity * price) AS total_amount,\n" +
    "    COUNT(*) AS transaction_count,\n" +
    "    ROUND(AVG(quantity * price), 2) AS avg_amount,\n" +
    "    COUNT(DISTINCT stock_code) AS stock_count,\n" +
    "    ROUND(SUM(CASE WHEN transaction_type = 'Buy' THEN quantity * price ELSE 0 END) * 100.0 / SUM(quantity * price), 1) || '%' AS buy_ratio,\n" +
    "    RANK() OVER (ORDER BY SUM(quantity * price) DESC) AS amount_rank\n" +
    "FROM \n" +
    "    client_transactions\n" +
    "GROUP BY \n" +
    "    client_name\n" +
    "HAVING \n" +
    "    SUM(quantity * price) > 100000\n" +
    "ORDER BY \n" +
    "    amount_rank ASC;",
  hint: "Use CASE WHEN to distinguish buy/sell, window function RANK() for ranking, COUNT DISTINCT for different stocks",
  type: "custom",
  difficulty: 2,
} as LevelType;
