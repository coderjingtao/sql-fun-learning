CREATE TABLE if not exists ecommerce_behavior (
    user_id INT,
    user_name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    city VARCHAR(50),
    registration_date DATE,
    total_orders INT,
    total_amount DECIMAL(10,2),
    avg_order_amount DECIMAL(8,2),
    favorite_category VARCHAR(50),
    last_order_date DATE,
    is_vip INT
);

INSERT INTO ecommerce_behavior (user_id, user_name, age, gender, city, registration_date, total_orders, total_amount, avg_order_amount, favorite_category, last_order_date, is_vip) VALUES
-- Young users
(1001, 'Tyler', 22, 'Male', 'Seattle', '2023-01-15', 45, 12500.00, 277.78, 'Electronics', '2024-01-20', 1),
(1002, 'Madison', 24, 'Female', 'Portland', '2023-02-20', 38, 8900.00, 234.21, 'Clothing', '2024-01-18', 0),
(1003, 'Brandon', 26, 'Male', 'Austin', '2023-03-10', 52, 15600.00, 300.00, 'Electronics', '2024-01-22', 1),
(1004, 'Brittany', 23, 'Female', 'Denver', '2023-04-05', 29, 6800.00, 234.48, 'Beauty', '2024-01-15', 0),
(1005, 'Austin', 25, 'Male', 'Nashville', '2023-05-12', 41, 9200.00, 224.39, 'Books', '2024-01-19', 0),

-- Middle-aged users
(2001, 'Michael', 35, 'Male', 'Chicago', '2022-06-18', 68, 25800.00, 379.41, 'Home Appliances', '2024-01-21', 1),
(2002, 'Jennifer', 38, 'Female', 'Boston', '2022-07-22', 55, 18900.00, 343.64, 'Clothing', '2024-01-17', 1),
(2003, 'Christopher', 42, 'Male', 'San Diego', '2022-08-15', 73, 32500.00, 445.21, 'Electronics', '2024-01-23', 1),
(2004, 'Michelle', 36, 'Female', 'Phoenix', '2022-09-08', 48, 14200.00, 295.83, 'Beauty', '2024-01-16', 0),
(2005, 'Matthew', 40, 'Male', 'Dallas', '2022-10-12', 61, 21600.00, 354.10, 'Home Appliances', '2024-01-20', 1),

-- Senior users
(3001, 'Barbara', 55, 'Female', 'Philadelphia', '2021-11-20', 32, 8500.00, 265.63, 'Books', '2024-01-14', 0),
(3002, 'Richard', 62, 'Male', 'Detroit', '2021-12-15', 28, 7200.00, 257.14, 'Health Products', '2024-01-12', 0),
(3003, 'Patricia', 58, 'Female', 'Cleveland', '2022-01-08', 35, 9800.00, 280.00, 'Health Products', '2024-01-18', 1),
(3004, 'William', 50, 'Male', 'Pittsburgh', '2022-02-14', 42, 12800.00, 304.76, 'Home Appliances', '2024-01-19', 0),
(3005, 'Dorothy', 53, 'Female', 'St. Louis', '2022-03-20', 38, 10500.00, 276.32, 'Clothing', '2024-01-17', 0),

-- VIP users
(4001, 'Jonathan', 45, 'Male', 'New York', '2020-01-10', 158, 89500.00, 566.46, 'Electronics', '2024-01-24', 1),
(4002, 'Elizabeth', 48, 'Female', 'Los Angeles', '2020-02-15', 142, 75600.00, 532.39, 'Clothing', '2024-01-23', 1),
(4003, 'Alexander', 52, 'Male', 'San Francisco', '2020-03-20', 176, 98200.00, 557.95, 'Home Appliances', '2024-01-25', 1),
(4004, 'Katherine', 41, 'Female', 'Houston', '2020-04-25', 134, 68900.00, 514.18, 'Beauty', '2024-01-22', 1),
(4005, 'Benjamin', 46, 'Male', 'Miami', '2020-05-30', 165, 82700.00, 501.21, 'Electronics', '2024-01-24', 1),

-- Churn-risk users
(5001, 'Dylan', 28, 'Male', 'Seattle', '2023-08-15', 12, 2800.00, 233.33, 'Books', '2023-11-20', 0),
(5002, 'Ashley', 31, 'Female', 'Portland', '2023-09-10', 8, 1900.00, 237.50, 'Clothing', '2023-12-05', 0),
(5003, 'Kyle', 27, 'Male', 'Austin', '2023-10-05', 15, 3200.00, 213.33, 'Electronics', '2023-12-18', 0),
(5004, 'Hannah', 29, 'Female', 'Denver', '2023-11-12', 6, 1500.00, 250.00, 'Beauty', '2023-12-25', 0),
(5005, 'Connor', 33, 'Male', 'Nashville', '2023-12-01', 4, 980.00, 245.00, 'Books', '2024-01-08', 0);
