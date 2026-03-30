CREATE TABLE if not exists restaurant_orders (
    order_id INT PRIMARY KEY,
    table_number INT,
    dish_name VARCHAR(100),
    dish_category VARCHAR(20),
    dish_price DECIMAL(6,2),
    quantity INT,
    order_time DATETIME,
    waiter_name VARCHAR(50),
    customer_count INT,
    is_member INT
);

INSERT INTO restaurant_orders (order_id, table_number, dish_name, dish_category, dish_price, quantity, order_time, waiter_name, customer_count, is_member) VALUES
-- Main Course
(1, 1, 'Yangzhou Fried Rice', 'Main Course', 28.00, 2, '2024-01-01 12:30:00', 'Sarah', 4, 1),
(2, 3, 'Beef Noodles', 'Main Course', 32.00, 1, '2024-01-01 13:15:00', 'Mike', 2, 0),
(3, 5, 'Seafood Porridge', 'Main Course', 25.00, 3, '2024-01-01 19:45:00', 'Lisa', 3, 1),
(4, 2, 'Egg Fried Rice', 'Main Course', 18.00, 2, '2024-01-02 12:00:00', 'Sarah', 2, 0),
(5, 7, 'Steamed Dumplings', 'Main Course', 22.00, 4, '2024-01-02 18:30:00', 'Tom', 4, 1),

-- Hot Dishes
(11, 1, 'Kung Pao Chicken', 'Hot Dishes', 48.00, 1, '2024-01-01 12:35:00', 'Sarah', 4, 1),
(12, 3, 'Sweet and Sour Pork', 'Hot Dishes', 45.00, 1, '2024-01-01 13:20:00', 'Mike', 2, 0),
(13, 4, 'Braised Pork Belly', 'Hot Dishes', 58.00, 1, '2024-01-01 18:15:00', 'Lisa', 3, 1),
(14, 5, 'Mapo Tofu', 'Hot Dishes', 32.00, 2, '2024-01-01 19:50:00', 'Lisa', 3, 1),
(15, 6, 'Boiled Fish', 'Hot Dishes', 68.00, 1, '2024-01-02 12:45:00', 'Tom', 5, 0),
(16, 2, 'Twice-Cooked Pork', 'Hot Dishes', 42.00, 1, '2024-01-02 12:05:00', 'Sarah', 2, 0),
(17, 8, 'Garlic Broccoli', 'Hot Dishes', 28.00, 1, '2024-01-02 19:00:00', 'Mike', 2, 1),

-- Cold Dishes
(21, 1, 'Cucumber Salad', 'Cold Dishes', 15.00, 1, '2024-01-01 12:32:00', 'Sarah', 4, 1),
(22, 4, 'Wood Ear Salad', 'Cold Dishes', 18.00, 1, '2024-01-01 18:10:00', 'Lisa', 3, 1),
(23, 6, 'Mouth-Watering Chicken', 'Cold Dishes', 35.00, 1, '2024-01-02 12:40:00', 'Tom', 5, 0),
(24, 8, 'Garlic Pork Slices', 'Cold Dishes', 32.00, 1, '2024-01-02 18:55:00', 'Mike', 2, 1),
(25, 9, 'Seaweed Salad', 'Cold Dishes', 12.00, 2, '2024-01-03 12:20:00', 'Sarah', 3, 0),

-- Soup
(31, 3, 'Tomato Egg Soup', 'Soup', 22.00, 1, '2024-01-01 13:25:00', 'Mike', 2, 0),
(32, 4, 'Winter Melon Rib Soup', 'Soup', 35.00, 1, '2024-01-01 18:20:00', 'Lisa', 3, 1),
(33, 7, 'Seaweed Egg Soup', 'Soup', 18.00, 1, '2024-01-02 18:35:00', 'Tom', 4, 1),
(34, 9, 'Hot and Sour Soup', 'Soup', 25.00, 1, '2024-01-03 12:25:00', 'Sarah', 3, 0),

-- Drinks
(41, 1, 'Fresh Orange Juice', 'Drinks', 25.00, 2, '2024-01-01 12:40:00', 'Sarah', 4, 1),
(42, 2, 'Lemon Honey Tea', 'Drinks', 22.00, 1, '2024-01-02 12:10:00', 'Sarah', 2, 0),
(43, 5, 'Milk Tea', 'Drinks', 18.00, 3, '2024-01-01 20:00:00', 'Lisa', 3, 1),
(44, 6, 'Coke', 'Drinks', 8.00, 2, '2024-01-02 12:50:00', 'Tom', 5, 0),
(45, 8, 'Green Tea', 'Drinks', 15.00, 1, '2024-01-02 19:05:00', 'Mike', 2, 1),
(46, 9, 'Coffee', 'Drinks', 28.00, 1, '2024-01-03 12:30:00', 'Sarah', 3, 0),

-- Dessert
(51, 4, 'Tiramisu', 'Dessert', 35.00, 1, '2024-01-01 18:45:00', 'Lisa', 3, 1),
(52, 7, 'Red Bean Ice', 'Dessert', 22.00, 2, '2024-01-02 19:00:00', 'Tom', 4, 1),
(53, 9, 'Mango Pudding', 'Dessert', 28.00, 1, '2024-01-03 13:00:00', 'Sarah', 3, 0);
