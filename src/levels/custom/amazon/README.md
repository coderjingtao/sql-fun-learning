## Amazon Shop

### Background Story
You are a data analyst at the "Amazon World" e-commerce platform. Black Friday has just passed, and your boss wants to deeply analyze the results of this big sale. He comes to you with a pile of order data, his eyes sparkling with desire for "hot-selling products," hoping you can find the winning formula for the next big sale from the data!

### Data Description
We have an order items table `order_items`, which records the product information purchased in each order:

- `order_id`: Order ID
- `product_id`: Product ID
- `product_name`: Product name
- `category`: Product category
- `price`: Unit price
- `quantity`: Purchase quantity
- `order_date`: Order date

### Task Requirements
The boss wants to know the sales performance of each product category. Please write a SQL query:

1. Calculate the total sales revenue for each product category (sum of price * quantity)
2. Calculate the total sales quantity for each product category
3. Sort by total sales revenue from high to low
4. Return fields: category name (category), total revenue (total_revenue), total quantity (total_quantity)

### Example Data
```
Category: Electronics, Total Revenue: 15000, Total Quantity: 25
Category: Clothing, Total Revenue: 8500, Total Quantity: 42
```

Come help the boss analyze which category is the most profitable!
