## Stock Investment

### Background Story
You are a risk control analyst at "Golden Bull Investment". Recently, the market has been extremely volatile, and the company has accumulated a large amount of financial transaction data. The risk control director wants to analyze the risk-return profile of various financial products, hoping you can find the optimal investment portfolio strategy from the data!

### Data Description
We have a stock transactions table `stock_transactions`, which records detailed information for each transaction:

- `transaction_id`: Transaction ID
- `stock_code`: Stock code
- `stock_name`: Stock name
- `sector`: Industry sector (Technology, Finance, Healthcare, Consumer, Energy, Manufacturing)
- `transaction_date`: Transaction date
- `transaction_type`: Transaction type (Buy/Sell)
- `quantity`: Transaction quantity (shares)
- `price_per_share`: Price per share (USD)
- `commission_fee`: Commission fee (USD)
- `investor_id`: Investor ID
- `investor_type`: Investor type (Individual/Institution)
- `market_cap`: Market cap category (Large Cap/Mid Cap/Small Cap)

### Task Requirements
The investment director wants to understand the trading situation of each industry sector. Please write a SQL query:

1. Calculate the total transaction amount for each sector (quantity × price per share)
2. Count the number of transactions for each sector
3. Calculate the average price per share for each sector
4. Calculate the buy/sell ratio for each sector
5. Calculate the proportion of institutional investor transactions for each sector
6. Calculate the average commission fee for each sector
7. Find the stock with the highest transaction amount in each sector
8. Calculate the price volatility for each sector (difference between highest and lowest price as a percentage of average price)
9. Sort by total transaction amount in descending order

Return fields:
- Sector (sector)
- Total transaction amount (total_amount, 2 decimal places)
- Transaction count (transaction_count)
- Average stock price (avg_price, 2 decimal places)
- Buy ratio (buy_ratio, 1 decimal place, with % symbol)
- Institution ratio (institution_ratio, 1 decimal place, with % symbol)
- Average commission fee (avg_commission, 2 decimal places)
- Hot stock (top_stock)
- Price volatility (volatility, 1 decimal place, with % symbol)

### Example Result
```
Sector: Technology, Total Amount: 50000000.00, Transactions: 120, Avg Price: 85.50, Buy Ratio: 55.0%, Institution Ratio: 65.0%, Avg Commission: 25.80, Hot Stock: Apple Inc, Volatility: 15.2%
```

Let's see which industry sector is most favored by investors!
