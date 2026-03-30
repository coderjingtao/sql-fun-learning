## Restaurant Empire

### Background Story
You are a data analyst at "Chinese Restaurant". The restaurant manager recently noticed that business fluctuates and can't figure out the pattern. He comes to you with POS system data, hoping you can help him find the "profit code" and see what times and dishes are most popular!

### Data Description
We have a restaurant orders table `restaurant_orders`, which records detailed information for each order:

- `order_id`: Order ID
- `table_number`: Table number
- `dish_name`: Dish name
- `dish_category`: Dish category (Main Course, Hot Dishes, Cold Dishes, Soup, Drinks, Dessert)
- `dish_price`: Dish unit price (USD)
- `quantity`: Quantity
- `order_time`: Order time
- `waiter_name`: Waiter name
- `customer_count`: Number of diners
- `is_member`: Is member (1/0)

### Task Requirements
The manager wants to understand the business performance of different dish categories. Please write a SQL query:

1. Calculate total sales for each dish category (unit price × quantity)
2. Count the number of orders for each dish category
3. Calculate average unit price for each dish category
4. Calculate the proportion of member orders for each dish category
5. Sort by total sales in descending order

Return fields:
- Dish category (dish_category)
- Total sales (total_sales)
- Order count (order_count)
- Average price (avg_price, 2 decimal places)
- Member order ratio (member_ratio, 1 decimal place, with % symbol)

### Example Result
```
Category: Hot Dishes, Total Sales: 15000 USD, Orders: 50, Avg Price: 45.60 USD, Member Ratio: 60.0%
```

Let's see which dish category is the restaurant's "money maker"!
