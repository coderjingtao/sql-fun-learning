CREATE TABLE if not exists game_matches (
    match_id INT PRIMARY KEY,
    player_id INT,
    player_name VARCHAR(50),
    hero_name VARCHAR(50),
    hero_role VARCHAR(20),
    game_result VARCHAR(10),
    kills INT,
    deaths INT,
    assists INT,
    game_duration INT,
    match_date DATE
);

INSERT INTO game_matches (match_id, player_id, player_name, hero_name, hero_role, game_result, kills, deaths, assists, game_duration, match_date) VALUES
-- Warriors
(1, 1001, 'Alex', 'Arthur', 'Warrior', 'Win', 8, 3, 5, 25, '2024-01-01'),
(2, 1002, 'Mike', 'Lu Bu', 'Warrior', 'Win', 12, 4, 3, 28, '2024-01-01'),
(3, 1003, 'Sarah', 'Mulan', 'Warrior', 'Loss', 6, 8, 4, 32, '2024-01-02'),
(4, 1001, 'Alex', 'Arthur', 'Warrior', 'Win', 10, 2, 8, 22, '2024-01-02'),
(5, 1004, 'Jake', 'Dian Wei', 'Warrior', 'Loss', 5, 7, 2, 30, '2024-01-03'),
(6, 1002, 'Mike', 'Lu Bu', 'Warrior', 'Win', 15, 3, 6, 26, '2024-01-03'),
(7, 1005, 'Leo', 'Tachibana', 'Warrior', 'Win', 9, 4, 7, 24, '2024-01-04'),

-- Mages
(11, 1003, 'Sarah', 'Daji', 'Mage', 'Win', 7, 2, 12, 23, '2024-01-05'),
(12, 1006, 'Tom', 'Wang Zhaojun', 'Mage', 'Loss', 4, 6, 8, 29, '2024-01-05'),
(13, 1007, 'Amy', 'Angela', 'Mage', 'Win', 11, 3, 9, 21, '2024-01-06'),
(14, 1003, 'Sarah', 'Daji', 'Mage', 'Win', 9, 1, 15, 20, '2024-01-06'),
(15, 1008, 'Kevin', 'Zhuge Liang', 'Mage', 'Loss', 6, 5, 7, 35, '2024-01-07'),
(16, 1006, 'Tom', 'Wang Zhaojun', 'Mage', 'Win', 8, 3, 11, 27, '2024-01-07'),

-- Marksmen
(21, 1009, 'Chris', 'Hou Yi', 'Marksman', 'Win', 13, 2, 4, 24, '2024-01-08'),
(22, 1010, 'David', 'Luban No.7', 'Marksman', 'Loss', 5, 8, 3, 31, '2024-01-08'),
(23, 1011, 'Emma', 'Sun Shangxiang', 'Marksman', 'Win', 10, 3, 6, 26, '2024-01-09'),
(24, 1009, 'Chris', 'Hou Yi', 'Marksman', 'Win', 14, 1, 5, 22, '2024-01-09'),
(25, 1012, 'Ryan', 'Marco Polo', 'Marksman', 'Loss', 7, 6, 4, 33, '2024-01-10'),
(26, 1010, 'David', 'Luban No.7', 'Marksman', 'Win', 9, 4, 7, 28, '2024-01-10'),

-- Supports
(31, 1013, 'Lily', 'Cai Wenji', 'Support', 'Win', 2, 3, 18, 25, '2024-01-11'),
(32, 1014, 'Anna', 'Zhuang Zhou', 'Support', 'Win', 1, 2, 20, 23, '2024-01-11'),
(33, 1015, 'Ben', 'Sun Bin', 'Support', 'Loss', 3, 5, 12, 29, '2024-01-12'),
(34, 1013, 'Lily', 'Cai Wenji', 'Support', 'Win', 0, 4, 16, 27, '2024-01-12'),
(35, 1016, 'Kate', 'Yao', 'Support', 'Loss', 2, 6, 10, 34, '2024-01-13'),

-- Tanks
(41, 1017, 'Sam', 'Lian Po', 'Tank', 'Win', 4, 5, 14, 26, '2024-01-14'),
(42, 1018, 'Max', 'Xiang Yu', 'Tank', 'Loss', 2, 8, 8, 32, '2024-01-14'),
(43, 1019, 'Paul', 'Bai Qi', 'Tank', 'Win', 3, 4, 16, 24, '2024-01-15'),
(44, 1017, 'Sam', 'Lian Po', 'Tank', 'Win', 5, 3, 12, 22, '2024-01-15'),
(45, 1020, 'John', 'Liu Bang', 'Tank', 'Loss', 1, 7, 9, 35, '2024-01-16'),

-- Assassins
(51, 1021, 'Nick', 'Lanling Wang', 'Assassin', 'Win', 16, 4, 2, 21, '2024-01-17'),
(52, 1022, 'Luke', 'Han Xin', 'Assassin', 'Loss', 8, 9, 5, 33, '2024-01-17'),
(53, 1023, 'Ethan', 'A Ke', 'Assassin', 'Win', 14, 3, 4, 19, '2024-01-18'),
(54, 1021, 'Nick', 'Lanling Wang', 'Assassin', 'Win', 18, 2, 1, 18, '2024-01-18'),
(55, 1024, 'Eric', 'Li Bai', 'Assassin', 'Loss', 10, 7, 3, 28, '2024-01-19');
