CREATE TABLE if not exists order_items (
    order_id INT,
    product_id INT,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2),
    quantity INT,
    order_date DATE
);

INSERT INTO order_items (order_id, product_id, product_name, category, price, quantity, order_date) VALUES
-- Electronics
(1001, 1, 'iPhone 15 Pro', 'Electronics', 7999.00, 2, '2024-01-15'),
(1002, 2, 'Laptop Pro', 'Electronics', 4999.00, 1, '2024-01-16'),
(1003, 3, 'AirPods Pro', 'Electronics', 1999.00, 3, '2024-01-17'),
(1004, 1, 'iPhone 15 Pro', 'Electronics', 7999.00, 1, '2024-01-18'),
(1005, 4, 'Smart Watch', 'Electronics', 2999.00, 2, '2024-01-19'),

-- Clothing
(2001, 11, 'Classic T-Shirt', 'Clothing', 199.00, 5, '2024-01-15'),
(2002, 12, 'Plaid Shirt', 'Clothing', 299.00, 3, '2024-01-16'),
(2003, 13, 'Code Hoodie', 'Clothing', 399.00, 4, '2024-01-17'),
(2004, 11, 'Classic T-Shirt', 'Clothing', 199.00, 8, '2024-01-18'),
(2005, 14, 'Bug Hunter Cap', 'Clothing', 99.00, 12, '2024-01-19'),

-- Books
(3001, 21, 'SQL Mastery', 'Books', 89.00, 15, '2024-01-15'),
(3002, 22, 'Java Programming', 'Books', 129.00, 8, '2024-01-16'),
(3003, 23, 'Introduction to Algorithms', 'Books', 199.00, 6, '2024-01-17'),
(3004, 21, 'SQL Mastery', 'Books', 89.00, 10, '2024-01-18'),
(3005, 24, 'Vue.js in Action', 'Books', 79.00, 20, '2024-01-19'),

-- Daily Essentials
(4001, 31, 'Developer Coffee Mug', 'Daily Essentials', 59.00, 25, '2024-01-15'),
(4002, 32, 'Keyboard Cleaning Kit', 'Daily Essential', 39.00, 18, '2024-01-16'),
(4003, 33, 'Eye-care Desk Lamp', 'Daily Essential', 299.00, 6, '2024-01-17'),
(4004, 31, 'Developer Coffee Mug', 'Daily Essential', 59.00, 15, '2024-01-18'),
(4005, 34, 'Neck Massager', 'Daily Essential', 199.00, 8, '2024-01-19');
