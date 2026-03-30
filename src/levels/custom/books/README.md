## Bookstore World

### Background Story

You are a data analyst at "Ocean Bookstore". After the Christmas holiday, the store manager wants to summarize last month's sales. She found that some books sold very well while others gathered dust on the shelves. She hopes you can find patterns in the sales data to provide support for next month's inventory plan!

### Data Description

We have a book sales table `book_sales`, which records detailed information for each sale:

- `sale_id`: Sale ID
- `book_id`: Book ID
- `book_title`: Book title
- `author`: Author
- `category`: Book category (Literature, Technology, Education, Lifestyle, History, Economics)
- `publisher`: Publisher
- `price`: Unit price (USD)
- `quantity`: Sales quantity
- `sale_date`: Sale date
- `customer_age`: Customer age
- `customer_gender`: Customer gender (M/F)
- `discount_rate`: Discount rate (0.8 means 20% off)

### Task Requirements

The store manager wants to understand the sales performance of different book categories. Please write a SQL query:

1. Calculate total sales revenue for each book category (unit price × quantity × discount rate)
2. Count the number of books sold for each book category
3. Calculate average discount rate for each book category
4. Find the best-selling book in each book category
5. Calculate average customer age for each book category
6. Sort by total sales revenue in descending order

Return fields:

- Book category (category)
- Total revenue (total_revenue, 2 decimal places)
- Total books sold (total_books)
- Average discount rate (avg_discount, 3 decimal places)
- Best-selling book (top_book)
- Average customer age (avg_age, 1 decimal place)

### Example Result

```
Category: Literature, Total Revenue: 25680.50 USD, Books Sold: 180, Avg Discount: 0.850, Best-Selling: One Hundred Years of Solitude, Avg Age: 32.5
```

Let's see which book category is most popular among readers!
