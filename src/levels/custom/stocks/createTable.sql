CREATE TABLE if not exists stock_transactions (
    transaction_id INT PRIMARY KEY,
    stock_code VARCHAR(10),
    stock_name VARCHAR(50),
    sector VARCHAR(20),
    transaction_date DATE,
    transaction_type VARCHAR(10),
    quantity INT,
    price_per_share DECIMAL(8,2),
    commission_fee DECIMAL(6,2),
    investor_id INT,
    investor_type VARCHAR(20),
    market_cap VARCHAR(20)
);

INSERT INTO stock_transactions (transaction_id, stock_code, stock_name, sector, transaction_date, transaction_type, quantity, price_per_share, commission_fee, investor_id, investor_type, market_cap) VALUES
-- Technology
(1, 'AAPL', 'Apple Inc', 'Technology', '2024-01-02', 'Buy', 1000, 185.50, 42.55, 10001, 'Institution', 'Large Cap'),
(2, 'GOOGL', 'Alphabet Inc', 'Technology', '2024-01-02', 'Sell', 800, 142.30, 31.73, 10002, 'Individual', 'Large Cap'),
(3, 'MSFT', 'Microsoft Corp', 'Technology', '2024-01-03', 'Buy', 1500, 378.80, 35.28, 10003, 'Institution', 'Large Cap'),
(4, 'AAPL', 'Apple Inc', 'Technology', '2024-01-03', 'Buy', 500, 188.10, 21.61, 10004, 'Individual', 'Large Cap'),
(5, 'META', 'Meta Platforms', 'Technology', '2024-01-04', 'Sell', 1200, 372.60, 21.50, 10005, 'Institution', 'Large Cap'),
(6, 'GOOGL', 'Alphabet Inc', 'Technology', '2024-01-04', 'Buy', 2000, 145.45, 40.69, 10006, 'Institution', 'Large Cap'),
(7, 'NVDA', 'NVIDIA Corp', 'Technology', '2024-01-05', 'Buy', 3000, 495.90, 28.35, 10007, 'Individual', 'Large Cap'),

-- Finance
(11, 'JPM', 'JPMorgan Chase', 'Finance', '2024-01-02', 'Buy', 5000, 172.85, 29.25, 10011, 'Institution', 'Large Cap'),
(12, 'BAC', 'Bank of America', 'Finance', '2024-01-02', 'Sell', 3000, 34.42, 19.26, 10012, 'Individual', 'Large Cap'),
(13, 'V', 'Visa Inc', 'Finance', '2024-01-03', 'Buy', 1000, 278.30, 26.15, 10013, 'Institution', 'Large Cap'),
(14, 'GS', 'Goldman Sachs', 'Finance', '2024-01-03', 'Buy', 2000, 388.75, 38.75, 10014, 'Institution', 'Large Cap'),
(15, 'AXP', 'American Express', 'Finance', '2024-01-04', 'Sell', 800, 198.60, 19.68, 10015, 'Individual', 'Mid Cap'),
(16, 'JPM', 'JPMorgan Chase', 'Finance', '2024-01-04', 'Buy', 4000, 175.92, 23.68, 10016, 'Individual', 'Large Cap'),

-- Healthcare
(21, 'JNJ', 'Johnson & Johnson', 'Healthcare', '2024-01-02', 'Buy', 500, 158.80, 22.90, 10021, 'Institution', 'Large Cap'),
(22, 'PFE', 'Pfizer Inc', 'Healthcare', '2024-01-02', 'Sell', 600, 28.50, 26.85, 10022, 'Individual', 'Mid Cap'),
(23, 'UNH', 'UnitedHealth', 'Healthcare', '2024-01-03', 'Buy', 200, 528.60, 28.56, 10023, 'Institution', 'Large Cap'),
(24, 'ABBV', 'AbbVie Inc', 'Healthcare', '2024-01-03', 'Buy', 800, 162.40, 25.92, 10024, 'Individual', 'Large Cap'),
(25, 'MRK', 'Merck & Co', 'Healthcare', '2024-01-04', 'Sell', 1000, 122.90, 28.90, 10025, 'Institution', 'Large Cap'),
(26, 'JNJ', 'Johnson & Johnson', 'Healthcare', '2024-01-04', 'Buy', 700, 160.20, 23.60, 10026, 'Individual', 'Large Cap'),

-- Consumer
(31, 'KO', 'Coca-Cola Co', 'Consumer', '2024-01-02', 'Buy', 100, 60.50, 33.61, 10031, 'Institution', 'Large Cap'),
(32, 'PEP', 'PepsiCo Inc', 'Consumer', '2024-01-02', 'Sell', 200, 168.30, 15.83, 10032, 'Individual', 'Large Cap'),
(33, 'WMT', 'Walmart Inc', 'Consumer', '2024-01-03', 'Buy', 1500, 165.60, 21.45, 10033, 'Institution', 'Large Cap'),
(34, 'PG', 'Procter & Gamble', 'Consumer', '2024-01-03', 'Buy', 800, 145.40, 38.16, 10034, 'Individual', 'Large Cap'),
(35, 'NKE', 'Nike Inc', 'Consumer', '2024-01-04', 'Sell', 1000, 98.80, 35.80, 10035, 'Institution', 'Large Cap'),
(36, 'KO', 'Coca-Cola Co', 'Consumer', '2024-01-04', 'Buy', 50, 62.20, 16.95, 10036, 'Individual', 'Large Cap'),

-- Energy
(41, 'XOM', 'Exxon Mobil', 'Energy', '2024-01-02', 'Buy', 2000, 102.85, 13.70, 10041, 'Institution', 'Large Cap'),
(42, 'CVX', 'Chevron Corp', 'Energy', '2024-01-02', 'Sell', 1500, 148.42, 8.13, 10042, 'Individual', 'Large Cap'),
(43, 'COP', 'ConocoPhillips', 'Energy', '2024-01-03', 'Buy', 1000, 118.60, 15.60, 10043, 'Institution', 'Large Cap'),
(44, 'SLB', 'Schlumberger', 'Energy', '2024-01-03', 'Buy', 3000, 52.90, 26.70, 10044, 'Individual', 'Mid Cap'),
(45, 'EOG', 'EOG Resources', 'Energy', '2024-01-04', 'Sell', 2500, 125.25, 18.13, 10045, 'Institution', 'Mid Cap'),

-- Manufacturing
(51, 'CAT', 'Caterpillar Inc', 'Manufacturing', '2024-01-02', 'Buy', 300, 298.50, 26.85, 10051, 'Institution', 'Large Cap'),
(52, 'DE', 'Deere & Company', 'Manufacturing', '2024-01-02', 'Sell', 200, 385.60, 18.56, 10052, 'Individual', 'Large Cap'),
(53, 'GE', 'General Electric', 'Manufacturing', '2024-01-03', 'Buy', 1000, 158.40, 18.40, 10053, 'Institution', 'Large Cap'),
(54, 'HON', 'Honeywell Intl', 'Manufacturing', '2024-01-03', 'Buy', 1500, 198.80, 10.20, 10054, 'Individual', 'Large Cap'),
(55, 'LUV', 'Southwest Airlines', 'Manufacturing', '2024-01-04', 'Sell', 2000, 32.25, 8.50, 10055, 'Institution', 'Mid Cap'),
(56, 'CAT', 'Caterpillar Inc', 'Manufacturing', '2024-01-04', 'Buy', 400, 305.30, 27.53, 10056, 'Individual', 'Large Cap');
