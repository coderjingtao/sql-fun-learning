## Delivery World

### Background Story
You are a data analyst at "UPS", responsible for analyzing delivery efficiency across the country. Recently, customer complaints have surged, and the operations director is on edge, urgently needing you to use data to identify the "speed demons" and "slowpokes" to optimize the delivery team!

### Data Description
We have a delivery records table `delivery_records`, which records delivery information:

- `delivery_id`: Delivery ID
- `order_id`: Order ID
- `courier_id`: Courier ID
- `courier_name`: Courier name
- `sender_city`: Sender city
- `receiver_city`: Receiver city
- `package_weight`: Package weight (kg)
- `delivery_distance`: Delivery distance (km)
- `send_time`: Send time
- `receive_time`: Receive time
- `delivery_status`: Delivery status (Delivered/In Transit/Returned)
- `is_express`: Is express (1/0)
- `delivery_fee`: Delivery fee (USD)

### Task Requirements
The operations director needs a comprehensive efficiency analysis report. Please write a complex SQL query:

1. Calculate delivery efficiency metrics for each courier:
   - Total deliveries
   - Success delivery rate (Delivered / Total * 100)
   - Average delivery time (hours, receive_time - send_time)
   - Average delivery distance
   - Total delivery fees
   - Average fee per km (Total fees / Total distance)

2. Use window functions to calculate each courier's ranking among all couriers:
   - Rank by total deliveries
   - Rank by success delivery rate

3. Filter conditions:
   - Only show couriers with 5 or more deliveries
   - Only count Delivered and In Transit orders

4. Sort by success delivery rate descending, then total deliveries descending

Return fields:
- Courier name (courier_name)
- Total deliveries (total_orders)
- Success delivery rate (success_rate, 1 decimal place, with % symbol)
- Average delivery time (avg_delivery_hours, 1 decimal place)
- Average delivery distance (avg_distance, 1 decimal place)
- Total delivery fees (total_fee)
- Average fee per km (fee_per_km, 2 decimal places)
- Deliveries rank (orders_rank)
- Success rate rank (success_rank)

### Hints
- Use JULIANDAY function to calculate time difference
- Use CASE WHEN to count successful deliveries
- Use window function RANK() to calculate rankings
- Use subqueries to handle complex filtering and sorting

This is a challenging query that requires combining multiple advanced SQL features!
