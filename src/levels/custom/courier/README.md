## Speed Demon

### Background Story

You are an operations analyst at "Flash Delivery" in Melbourne. The company recently introduced a new performance evaluation system. The HR director wants to analyze the work performance of couriers to select the monthly "Speed Demon". You need to find the true kings of speed and efficiency from massive delivery data!

### Data Description

We have a courier performance table `courier_performance`, which records each courier's daily work performance:

- `record_id`: Record ID
- `courier_id`: Courier ID
- `courier_name`: Courier name
- `delivery_date`: Delivery date
- `orders_completed`: Orders completed
- `orders_failed`: Orders failed
- `total_distance`: Total delivery distance (km)
- `work_hours`: Work hours
- `customer_rating`: Customer rating (1-5)
- `delivery_area`: Delivery area

### Task Requirements

The operations director wants a comprehensive courier performance report. Please write a SQL query:

1. Calculate total completed orders for each courier
2. Calculate total failed orders for each courier
3. Calculate success rate for each courier (completed orders / total orders \* 100)
4. Calculate average customer rating for each courier
5. Calculate total delivery distance for each courier
6. Calculate work efficiency for each courier (average completed orders per hour)
7. Only show couriers with total orders (completed + failed) >= 20
8. Sort by success rate descending, then by completed orders descending

Return fields:

- Courier name (courier_name)
- Total completed orders (total_completed)
- Total failed orders (total_failed)
- Success rate (success_rate, 1 decimal place, with % symbol)
- Average rating (avg_rating, 1 decimal place)
- Total delivery distance (total_distance, 1 decimal place)
- Work efficiency (efficiency, 1 decimal place, unit: orders/hour)

### Example Result

```
Courier: Alex, Completed: 315 orders, Failed: 11 orders, Success Rate: 96.6%, Rating: 4.8, Distance: 1303.7 km, Efficiency: 5.2 orders/hour
```

Let's see who can become this month's "Speed Demon"!
