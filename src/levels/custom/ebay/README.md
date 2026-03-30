## eBay User Secrets

### Background Story
You are a user operations analyst at "eBay" e-commerce platform. The platform has accumulated massive user behavior data. The marketing director wants to deeply understand the consumption characteristics of different age groups to develop precision marketing strategies. This important task has fallen on your shoulders. Come mine the golden information from user data!

### Data Description
We have a user behavior table `ecommerce_behavior`, which records user basic information and consumption behavior:

- `user_id`: User ID
- `user_name`: User name
- `age`: User age
- `gender`: User gender (Male/Female)
- `city`: City
- `registration_date`: Registration date
- `total_orders`: Total orders
- `total_amount`: Total spending (USD)
- `avg_order_amount`: Average order amount (USD)
- `favorite_category`: Favorite category
- `last_order_date`: Last order date
- `is_vip`: Is VIP user (1 Yes/0 No)

### Task Requirements
The operations team needs an age group user analysis report. Please write a SQL query:

1. Group users by age: Young (<30), Middle-aged (30-49), Senior (≥50)
2. Count the number of users in each age group
3. Calculate average spending for each age group
4. Calculate average orders for each age group
5. Calculate average order value for each age group
6. Calculate VIP user ratio for each age group
7. Calculate gender ratio for each age group (Male%:Female%)
8. Find the most popular product category for each age group (by total spending)
9. Sort by average spending descending

Return fields:
- Age group (age_group)
- User count (user_count)
- Average spending (avg_amount, 2 decimal places)
- Average orders (avg_orders, 1 decimal place)
- Average order value (avg_order_value, 2 decimal places)
- VIP ratio (vip_ratio, 1 decimal place, with % symbol)
- Gender ratio (gender_ratio, format: Male%:Female%)
- Popular category (popular_category)

### Hints
- Use CASE WHEN for age grouping
- Use subquery to find popular category
- Note the gender ratio format requirement

This is a complex user profile analysis that tests your data analysis skills!
