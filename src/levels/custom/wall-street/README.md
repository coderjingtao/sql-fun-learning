## Wall Street Storm

### Background Story
You are a quantitative analyst at "Golden Bull Investment". The bull market has just ended, and the company has accumulated a large amount of stock trading data. The investment director wants to analyze the performance of various stocks to find the best investment strategy. He has given you this important task, hoping you can mine the golden rules of investment from massive data!

### Data Description
We have a client transactions table `client_transactions`, which records client transaction information:

- `transaction_id`: Transaction ID
- `client_id`: Client ID
- `client_name`: Client name
- `stock_code`: Stock code
- `stock_name`: Stock name
- `transaction_type`: Transaction type (Buy/Sell)
- `quantity`: Transaction quantity (shares)
- `price`: Transaction price (USD)
- `transaction_date`: Transaction date
- `sector`: Industry sector

### Task Requirements
The risk control team needs a comprehensive risk assessment report. Please write a SQL query:

1. Calculate total transaction amount for each client (buy + sell)
2. Calculate transaction frequency for each client (total number of transactions)
3. Calculate average transaction amount per trade for each client
4. Count the number of different stocks traded by each client (distinct)
5. Calculate buy/sell ratio for each client (buy amount / total amount * 100)
6. Use window function to calculate each client's transaction amount ranking among all clients
7. Only show clients with total transaction amount > 100000
8. Sort by transaction amount ranking ascending

Return fields:
- Client name (client_name)
- Total transaction amount (total_amount)
- Transaction count (transaction_count)
- Average amount per trade (avg_amount, 2 decimal places)
- Number of stocks traded (stock_count)
- Buy ratio (buy_ratio, 1 decimal place, with % symbol)
- Transaction amount ranking (amount_rank)

### Hints
- Use CASE WHEN to distinguish buy/sell
- Use window function RANK() to calculate ranking
- Use COUNT DISTINCT to count different stocks
- Handle division by zero cases

This is a comprehensive query that tests your overall SQL skills!
