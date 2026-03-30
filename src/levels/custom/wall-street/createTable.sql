CREATE TABLE if not exists client_transactions (
    transaction_id INT PRIMARY KEY,
    client_id INT,
    client_name VARCHAR(50),
    stock_code VARCHAR(10),
    stock_name VARCHAR(50),
    transaction_type VARCHAR(10),
    quantity INT,
    price DECIMAL(10,2),
    transaction_date DATE,
    sector VARCHAR(30)
);

INSERT INTO client_transactions (transaction_id, client_id, client_name, stock_code, stock_name, transaction_type, quantity, price, transaction_date, sector) VALUES
-- Client 1: Warren - Large investor
(1, 1001, 'Warren', 'AAPL', 'Apple Inc', 'Buy', 500, 185.50, '2024-01-05', 'Technology'),
(2, 1001, 'Warren', 'AAPL', 'Apple Inc', 'Buy', 300, 188.20, '2024-01-12', 'Technology'),
(3, 1001, 'Warren', 'MSFT', 'Microsoft Corp', 'Buy', 200, 378.80, '2024-01-18', 'Technology'),
(4, 1001, 'Warren', 'JPM', 'JPMorgan Chase', 'Sell', 400, 172.85, '2024-01-25', 'Finance'),
(5, 1001, 'Warren', 'GOOGL', 'Alphabet Inc', 'Buy', 150, 142.30, '2024-02-01', 'Technology'),
(6, 1001, 'Warren', 'NVDA', 'NVIDIA Corp', 'Sell', 100, 495.90, '2024-02-08', 'Technology'),

-- Client 2: Charlie - Diversified investor
(11, 1002, 'Charlie', 'JPM', 'JPMorgan Chase', 'Buy', 600, 170.50, '2024-01-03', 'Finance'),
(12, 1002, 'Charlie', 'BAC', 'Bank of America', 'Buy', 800, 34.42, '2024-01-10', 'Finance'),
(13, 1002, 'Charlie', 'XOM', 'Exxon Mobil', 'Buy', 400, 102.85, '2024-01-17', 'Energy'),
(14, 1002, 'Charlie', 'CVX', 'Chevron Corp', 'Sell', 300, 148.42, '2024-01-24', 'Energy'),
(15, 1002, 'Charlie', 'JNJ', 'Johnson & Johnson', 'Buy', 200, 158.80, '2024-01-31', 'Healthcare'),
(16, 1002, 'Charlie', 'AAPL', 'Apple Inc', 'Sell', 250, 186.50, '2024-02-07', 'Technology'),

-- Client 3: Michael - Tech focused
(21, 1003, 'Michael', 'TSLA', 'Tesla Inc', 'Buy', 300, 248.50, '2024-01-02', 'Technology'),
(22, 1003, 'Michael', 'NVDA', 'NVIDIA Corp', 'Buy', 200, 490.80, '2024-01-09', 'Technology'),
(23, 1003, 'Michael', 'META', 'Meta Platforms', 'Buy', 150, 372.60, '2024-01-16', 'Technology'),
(24, 1003, 'Michael', 'TSLA', 'Tesla Inc', 'Sell', 200, 255.30, '2024-01-23', 'Technology'),
(25, 1003, 'Michael', 'AMD', 'AMD Inc', 'Buy', 400, 178.50, '2024-01-30', 'Technology'),

-- Client 4: Sarah - Conservative investor
(31, 1004, 'Sarah', 'KO', 'Coca-Cola Co', 'Buy', 800, 60.50, '2024-01-04', 'Consumer'),
(32, 1004, 'Sarah', 'PG', 'Procter & Gamble', 'Buy', 500, 145.40, '2024-01-11', 'Consumer'),
(33, 1004, 'Sarah', 'WMT', 'Walmart Inc', 'Buy', 600, 165.60, '2024-01-18', 'Consumer'),
(34, 1004, 'Sarah', 'PEP', 'PepsiCo Inc', 'Sell', 400, 168.30, '2024-01-25', 'Consumer'),
(35, 1004, 'Sarah', 'JNJ', 'Johnson & Johnson', 'Buy', 300, 160.20, '2024-02-01', 'Healthcare'),

-- Client 5: David - Healthcare sector
(41, 1005, 'David', 'UNH', 'UnitedHealth', 'Buy', 200, 528.60, '2024-01-05', 'Healthcare'),
(42, 1005, 'David', 'PFE', 'Pfizer Inc', 'Buy', 1000, 28.50, '2024-01-12', 'Healthcare'),
(43, 1005, 'David', 'ABBV', 'AbbVie Inc', 'Buy', 400, 162.40, '2024-01-19', 'Healthcare'),
(44, 1005, 'David', 'MRK', 'Merck & Co', 'Sell', 300, 122.90, '2024-01-26', 'Healthcare'),
(45, 1005, 'David', 'LLY', 'Eli Lilly', 'Buy', 150, 580.20, '2024-02-02', 'Healthcare'),

-- Client 6: Emma - Small trader
(51, 1006, 'Emma', 'AAPL', 'Apple Inc', 'Buy', 100, 184.50, '2024-01-08', 'Technology'),
(52, 1006, 'Emma', 'TSLA', 'Tesla Inc', 'Sell', 50, 250.80, '2024-01-15', 'Technology'),
(53, 1006, 'Emma', 'NVDA', 'NVIDIA Corp', 'Buy', 30, 485.50, '2024-01-22', 'Technology');
