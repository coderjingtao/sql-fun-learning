CREATE TABLE if not exists twitter_posts (
    post_id INT PRIMARY KEY,
    user_id INT,
    username VARCHAR(50),
    content_type VARCHAR(20),
    topic_category VARCHAR(20),
    publish_time DATETIME,
    likes_count INT,
    comments_count INT,
    reposts_count INT,
    followers_count INT,
    has_image INT,
    has_video INT
);

INSERT INTO twitter_posts (post_id, user_id, username, content_type, topic_category, publish_time, likes_count, comments_count, reposts_count, followers_count, has_image, has_video) VALUES
-- Technology
(1, 1001, 'Alex', 'Original', 'Technology', '2024-01-01 10:00:00', 1200, 300, 150, 50000, 1, 0),
(2, 1002, 'Mike', 'Original', 'Technology', '2024-01-02 14:30:00', 800, 200, 100, 30000, 0, 1),
(3, 1003, 'Sarah', 'Retweet', 'Technology', '2024-01-03 09:15:00', 500, 80, 200, 25000, 1, 0),
(4, 1004, 'Kevin', 'Original', 'Technology', '2024-01-04 16:45:00', 2000, 500, 300, 80000, 1, 1),

-- Entertainment
(11, 2001, 'Emma', 'Original', 'Entertainment', '2024-01-05 12:00:00', 5000, 800, 1200, 200000, 1, 0),
(12, 2002, 'Lisa', 'Retweet', 'Entertainment', '2024-01-06 20:30:00', 3000, 600, 800, 150000, 1, 1),
(13, 2003, 'Tom', 'Original', 'Entertainment', '2024-01-07 18:15:00', 4200, 700, 900, 180000, 1, 0),
(14, 2004, 'Amy', 'Original', 'Entertainment', '2024-01-08 21:00:00', 1800, 400, 300, 60000, 0, 1),

-- Sports
(21, 3001, 'John', 'Original', 'Sports', '2024-01-09 08:30:00', 2500, 400, 600, 100000, 1, 1),
(22, 3002, 'David', 'Retweet', 'Sports', '2024-01-10 19:45:00', 1500, 300, 400, 70000, 1, 0),
(23, 3003, 'Chris', 'Original', 'Sports', '2024-01-11 22:15:00', 3200, 500, 700, 120000, 0, 1),
(24, 3004, 'Ryan', 'Original', 'Sports', '2024-01-12 07:00:00', 1000, 200, 250, 40000, 1, 0),

-- News
(31, 4001, 'Nick', 'Original', 'News', '2024-01-13 11:30:00', 3500, 600, 800, 150000, 1, 0),
(32, 4002, 'Luke', 'Original', 'News', '2024-01-14 15:45:00', 2800, 500, 600, 110000, 0, 0),
(33, 4003, 'Ben', 'Retweet', 'News', '2024-01-15 13:20:00', 1200, 250, 300, 50000, 1, 0),

-- Lifestyle
(41, 5001, 'Kate', 'Original', 'Lifestyle', '2024-01-16 12:00:00', 2200, 400, 350, 90000, 1, 1),
(42, 5002, 'Anna', 'Original', 'Lifestyle', '2024-01-17 16:30:00', 1800, 300, 280, 75000, 1, 0),
(43, 5003, 'Sam', 'Original', 'Lifestyle', '2024-01-18 10:15:00', 1500, 200, 150, 60000, 1, 0),
(44, 5004, 'Max', 'Original', 'Lifestyle', '2024-01-19 14:45:00', 2800, 350, 400, 95000, 1, 0),

-- Education
(51, 6001, 'Paul', 'Original', 'Education', '2024-01-20 09:00:00', 1600, 280, 200, 65000, 0, 1),
(52, 6002, 'Eric', 'Original', 'Education', '2024-01-21 11:30:00', 1200, 200, 150, 45000, 1, 0),
(53, 6003, 'Leo', 'Retweet', 'Education', '2024-01-22 14:00:00', 800, 120, 100, 35000, 0, 0);
