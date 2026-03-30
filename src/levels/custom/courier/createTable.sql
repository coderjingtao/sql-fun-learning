CREATE TABLE if not exists courier_performance (
    record_id INT PRIMARY KEY,
    courier_id INT,
    courier_name VARCHAR(50),
    delivery_date DATE,
    orders_completed INT,
    orders_failed INT,
    total_distance DECIMAL(8,2),
    work_hours DECIMAL(4,1),
    customer_rating DECIMAL(3,1),
    delivery_area VARCHAR(50)
);

INSERT INTO courier_performance (record_id, courier_id, courier_name, delivery_date, orders_completed, orders_failed, total_distance, work_hours, customer_rating, delivery_area) VALUES
-- Courier 1: Alex - Senior courier
(1, 1001, 'Alex', '2026-01-01', 45, 2, 180.5, 8.5, 4.8, 'Melbourne City'),
(2, 1001, 'Alex', '2026-01-02', 48, 1, 195.2, 9.0, 4.9, 'Melbourne City'),
(3, 1001, 'Alex', '2026-01-03', 42, 3, 165.8, 8.0, 4.7, 'Melbourne City'),
(4, 1001, 'Alex', '2026-01-04', 50, 0, 210.3, 9.5, 5.0, 'Melbourne City'),
(5, 1001, 'Alex', '2026-01-05', 46, 2, 185.7, 8.8, 4.8, 'Melbourne City'),
(6, 1001, 'Alex', '2026-01-06', 44, 1, 175.4, 8.2, 4.9, 'Melbourne City'),
(7, 1001, 'Alex', '2026-01-07', 47, 2, 190.8, 9.0, 4.8, 'Melbourne City'),

-- Courier 2: Mike - New courier
(11, 1002, 'Mike', '2026-01-01', 25, 5, 120.3, 8.0, 4.2, 'Port Phillip'),
(12, 1002, 'Mike', '2026-01-02', 28, 4, 135.6, 8.5, 4.3, 'Port Phillip'),
(13, 1002, 'Mike', '2026-01-03', 22, 6, 110.8, 7.5, 4.0, 'Port Phillip'),
(14, 1002, 'Mike', '2026-01-04', 30, 3, 145.2, 8.8, 4.4, 'Port Phillip'),
(15, 1002, 'Mike', '2026-01-05', 26, 5, 125.7, 8.2, 4.1, 'Port Phillip'),
(16, 1002, 'Mike', '2026-01-06', 29, 4, 140.5, 8.6, 4.3, 'Port Phillip'),
(17, 1002, 'Mike', '2026-01-07', 24, 6, 115.9, 7.8, 4.0, 'Port Phillip'),

-- Courier 3: Sarah - Efficient courier
(21, 1003, 'Sarah', '2026-01-01', 38, 2, 155.8, 7.5, 4.6, 'Yarra'),
(22, 1003, 'Sarah', '2026-01-02', 40, 1, 165.2, 8.0, 4.7, 'Yarra'),
(23, 1003, 'Sarah', '2026-01-03', 35, 3, 145.6, 7.2, 4.5, 'Yarra'),
(24, 1003, 'Sarah', '2026-01-04', 42, 0, 175.4, 8.2, 4.8, 'Yarra'),
(25, 1003, 'Sarah', '2026-01-05', 39, 2, 160.3, 7.8, 4.6, 'Yarra'),
(26, 1003, 'Sarah', '2026-01-06', 37, 1, 152.7, 7.5, 4.7, 'Yarra'),
(27, 1003, 'Sarah', '2026-01-07', 41, 1, 170.9, 8.0, 4.7, 'Yarra'),

-- Courier 4: Jake - Steady courier
(31, 1004, 'Jake', '2026-01-01', 32, 3, 140.2, 8.0, 4.4, 'Stonnington'),
(32, 1004, 'Jake', '2026-01-02', 34, 2, 150.8, 8.3, 4.5, 'Stonnington'),
(33, 1004, 'Jake', '2026-01-03', 30, 4, 135.5, 7.8, 4.3, 'Stonnington'),
(34, 1004, 'Jake', '2026-01-04', 36, 1, 160.7, 8.5, 4.6, 'Stonnington'),
(35, 1004, 'Jake', '2026-01-05', 33, 3, 145.9, 8.1, 4.4, 'Stonnington'),
(36, 1004, 'Jake', '2026-01-06', 35, 2, 155.3, 8.4, 4.5, 'Stonnington'),
(37, 1004, 'Jake', '2026-01-07', 31, 4, 140.6, 7.9, 4.3, 'Stonnington'),

-- Courier 5: Leo - Many issues
(41, 1005, 'Leo', '2026-01-01', 20, 8, 95.6, 8.0, 3.8, 'Boroondara'),
(42, 1005, 'Leo', '2026-01-02', 22, 7, 105.3, 8.2, 3.9, 'Boroondara'),
(43, 1005, 'Leo', '2026-01-03', 18, 9, 88.7, 7.8, 3.7, 'Boroondara'),
(44, 1005, 'Leo', '2026-01-04', 25, 6, 115.8, 8.5, 4.0, 'Boroondara'),
(45, 1005, 'Leo', '2026-01-05', 21, 8, 98.4, 8.1, 3.8, 'Boroondara'),
(46, 1005, 'Leo', '2026-01-06', 23, 7, 108.9, 8.3, 3.9, 'Boroondara'),
(47, 1005, 'Leo', '2026-01-07', 19, 9, 92.5, 7.9, 3.7, 'Boroondara'),

-- Courier 6: Tom - Part-time courier
(51, 1006, 'Tom', '2026-01-01', 15, 2, 68.5, 4.0, 4.2, 'Bayside'),
(52, 1006, 'Tom', '2026-01-02', 18, 1, 78.9, 4.5, 4.3, 'Bayside'),
(53, 1006, 'Tom', '2026-01-03', 12, 3, 58.7, 3.5, 4.0, 'Bayside'),
(54, 1006, 'Tom', '2026-01-04', 20, 0, 85.3, 5.0, 4.5, 'Bayside'),
(55, 1006, 'Tom', '2026-01-05', 16, 2, 72.6, 4.2, 4.2, 'Bayside'),
(56, 1006, 'Tom', '2026-01-06', 17, 1, 75.8, 4.3, 4.3, 'Bayside'),
(57, 1006, 'Tom', '2026-01-07', 14, 3, 65.4, 3.8, 4.0, 'Bayside');
