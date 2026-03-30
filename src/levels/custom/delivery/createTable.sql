CREATE TABLE if not exists delivery_records (
    delivery_id INT PRIMARY KEY,
    order_id VARCHAR(20),
    courier_id INT,
    courier_name VARCHAR(50),
    sender_city VARCHAR(50),
    receiver_city VARCHAR(50),
    package_weight DECIMAL(5,2),
    delivery_distance DECIMAL(8,2),
    send_time DATETIME,
    receive_time DATETIME,
    delivery_status VARCHAR(20),
    is_express INT,
    delivery_fee DECIMAL(8,2)
);

INSERT INTO delivery_records (delivery_id, order_id, courier_id, courier_name, sender_city, receiver_city, package_weight, delivery_distance, send_time, receive_time, delivery_status, is_express, delivery_fee) VALUES
-- Courier 1: Alex - Efficient courier
(1, 'UPS001', 1001, 'Alex', 'Los Angeles', 'San Diego', 2.5, 120.5, '2024-01-01 09:00:00', '2024-01-01 15:30:00', 'Delivered', 0, 15.00),
(2, 'UPS002', 1001, 'Alex', 'Los Angeles', 'San Bernardino', 1.8, 85.2, '2024-01-01 10:30:00', '2024-01-01 16:45:00', 'Delivered', 1, 18.50),
(3, 'UPS003', 1001, 'Alex', 'Los Angeles', 'Riverside', 3.2, 95.8, '2024-01-02 08:15:00', '2024-01-02 14:20:00', 'Delivered', 0, 12.80),
(4, 'UPS004', 1001, 'Alex', 'Los Angeles', 'Long Beach', 2.1, 40.3, '2024-01-02 11:00:00', '2024-01-02 14:30:00', 'Delivered', 0, 16.20),
(5, 'UPS005', 1001, 'Alex', 'Los Angeles', 'Irvine', 1.5, 55.7, '2024-01-03 09:30:00', '2024-01-03 13:15:00', 'Delivered', 1, 20.00),
(6, 'UPS006', 1001, 'Alex', 'Los Angeles', 'Anaheim', 4.0, 35.5, '2024-01-03 14:00:00', '2024-01-03 17:30:00', 'In Transit', 0, 11.50),
(7, 'UPS007', 1001, 'Alex', 'Los Angeles', 'Santa Barbara', 2.8, 150.9, '2024-01-04 08:00:00', '2024-01-04 16:45:00', 'Delivered', 0, 28.50),

-- Courier 2: Mike - Average efficiency
(11, 'UPS011', 1002, 'Mike', 'San Francisco', 'Oakland', 3.5, 15.3, '2024-01-01 10:00:00', '2024-01-01 12:30:00', 'Delivered', 0, 14.80),
(12, 'UPS012', 1002, 'Mike', 'San Francisco', 'San Jose', 2.2, 65.8, '2024-01-01 14:30:00', '2024-01-01 17:15:00', 'Delivered', 0, 10.20),
(13, 'UPS013', 1002, 'Mike', 'San Francisco', 'Palo Alto', 1.9, 35.6, '2024-01-02 09:00:00', '2024-01-02 11:45:00', 'Delivered', 1, 8.50),
(14, 'UPS014', 1002, 'Mike', 'San Francisco', 'Sacramento', 4.5, 135.2, '2024-01-02 15:00:00', '2024-01-03 11:30:00', 'Returned', 0, 18.60),
(15, 'UPS015', 1002, 'Mike', 'San Francisco', 'Fremont', 2.8, 55.9, '2024-01-03 11:30:00', '2024-01-03 15:45:00', 'Delivered', 0, 12.30),
(16, 'UPS016', 1002, 'Mike', 'San Francisco', 'Berkeley', 3.1, 18.4, '2024-01-04 08:30:00', '2024-01-04 11:20:00', 'In Transit', 1, 22.80),

-- Courier 3: Sarah - Professional courier
(21, 'UPS021', 1003, 'Sarah', 'New York', 'Newark', 2.0, 15.7, '2024-01-01 08:00:00', '2024-01-01 11:30:00', 'Delivered', 0, 19.80),
(22, 'UPS022', 1003, 'Sarah', 'New York', 'Jersey City', 1.6, 8.3, '2024-01-01 12:00:00', '2024-01-01 14:45:00', 'Delivered', 1, 16.50),
(23, 'UPS023', 1003, 'Sarah', 'New York', 'Philadelphia', 3.8, 95.6, '2024-01-02 09:15:00', '2024-01-02 14:20:00', 'Delivered', 0, 32.50),
(24, 'UPS024', 1003, 'Sarah', 'New York', 'White Plains', 2.5, 28.8, '2024-01-02 13:30:00', '2024-01-02 16:15:00', 'Delivered', 0, 15.60),
(25, 'UPS025', 1003, 'Sarah', 'New York', 'Hartford', 4.2, 125.9, '2024-01-03 10:00:00', '2024-01-03 15:45:00', 'Delivered', 1, 28.90),
(26, 'UPS026', 1003, 'Sarah', 'New York', 'Stamford', 1.8, 42.2, '2024-01-03 15:45:00', '2024-01-03 18:30:00', 'In Transit', 0, 12.80),
(27, 'UPS027', 1003, 'Sarah', 'New York', 'Boston', 3.0, 215.4, '2024-01-04 07:30:00', '2024-01-04 16:15:00', 'Delivered', 0, 35.20),

-- Courier 4: Jake - New courier
(31, 'UPS031', 1004, 'Jake', 'Chicago', 'Milwaukee', 2.8, 145.6, '2024-01-01 09:30:00', '2024-01-01 15:45:00', 'Delivered', 0, 16.20),
(32, 'UPS032', 1004, 'Jake', 'Chicago', 'Indianapolis', 3.5, 185.7, '2024-01-01 14:00:00', '2024-01-02 16:30:00', 'Returned', 0, 28.50),
(33, 'UPS033', 1004, 'Jake', 'Chicago', 'Naperville', 1.9, 35.8, '2024-01-02 10:15:00', '2024-01-02 13:20:00', 'Delivered', 1, 25.60),
(34, 'UPS034', 1004, 'Jake', 'Chicago', 'Aurora', 2.4, 45.3, '2024-01-02 15:30:00', '2024-01-02 18:15:00', 'In Transit', 0, 9.80),
(35, 'UPS035', 1004, 'Jake', 'Chicago', 'Detroit', 4.1, 285.9, '2024-01-03 08:45:00', '2024-01-04 12:30:00', 'Delivered', 0, 22.40),

-- Courier 5: Leo - Lower efficiency
(41, 'UPS041', 1005, 'Leo', 'Houston', 'Dallas', 3.2, 385.5, '2024-01-01 08:00:00', '2024-01-02 15:30:00', 'Delivered', 0, 35.80),
(42, 'UPS042', 1005, 'Leo', 'Houston', 'Austin', 2.1, 265.6, '2024-01-01 13:30:00', '2024-01-02 18:45:00', 'Returned', 0, 15.20),
(43, 'UPS043', 1005, 'Leo', 'Houston', 'San Antonio', 1.8, 320.8, '2024-01-02 11:00:00', '2024-01-03 14:20:00', 'Delivered', 1, 18.50),
(44, 'UPS044', 1005, 'Leo', 'Houston', 'Galveston', 2.9, 55.7, '2024-01-03 09:15:00', '2024-01-03 16:30:00', 'In Transit', 0, 16.80),

-- Courier 6: Tom - Few orders
(51, 'UPS051', 1006, 'Tom', 'Seattle', 'Portland', 2.5, 175.3, '2024-01-01 10:30:00', '2024-01-01 16:15:00', 'Delivered', 0, 22.60),
(52, 'UPS052', 1006, 'Tom', 'Seattle', 'Tacoma', 1.7, 55.8, '2024-01-02 14:45:00', '2024-01-02 17:30:00', 'Delivered', 1, 12.50);
