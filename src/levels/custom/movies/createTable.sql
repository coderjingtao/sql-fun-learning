CREATE TABLE if not exists movie_box_office (
    movie_id INT PRIMARY KEY,
    movie_name VARCHAR(100),
    genre VARCHAR(20),
    director VARCHAR(50),
    release_date DATE,
    ticket_price DECIMAL(5,2),
    audience_count INT,
    rating DECIMAL(3,1),
    duration INT,
    production_cost DECIMAL(10,2)
);

INSERT INTO movie_box_office (movie_id, movie_name, genre, director, release_date, ticket_price, audience_count, rating, duration, production_cost) VALUES
-- Action
(1, 'Fast & Furious: The Final Showdown', 'Action', 'Justin Lin', '2024-01-01', 15.00, 2800000, 8.5, 135, 15000.00),
(2, 'Agent Returns', 'Action', 'Christopher McQuarrie', '2024-01-05', 14.00, 1500000, 7.8, 120, 8000.00),
(3, 'City Hero', 'Action', 'Michael Bay', '2024-01-10', 16.00, 2200000, 8.2, 128, 12000.00),

-- Comedy
(11, 'Hilarious Family', 'Comedy', 'Judd Apatow', '2024-01-02', 12.00, 3200000, 8.8, 105, 5000.00),
(12, 'Crazy Vacation', 'Comedy', 'Todd Phillips', '2024-01-08', 11.00, 2800000, 8.1, 95, 4500.00),
(13, 'Happy Times', 'Comedy', 'Adam McKay', '2024-01-15', 13.00, 1800000, 7.9, 110, 6000.00),
(14, 'Comedy Master', 'Comedy', 'Edgar Wright', '2024-01-20', 12.00, 2100000, 8.3, 100, 4800.00),

-- Sci-Fi
(21, 'Future World', 'Sci-Fi', 'Ridley Scott', '2024-01-03', 18.00, 1800000, 8.7, 145, 20000.00),
(22, 'Interstellar Traveler', 'Sci-Fi', 'Christopher Nolan', '2024-01-12', 17.00, 1600000, 8.4, 150, 18000.00),
(23, 'Rise of Robots', 'Sci-Fi', 'Denis Villeneuve', '2024-01-18', 16.00, 1400000, 7.6, 130, 16000.00),

-- Romance
(31, 'Heartbeat Moments', 'Romance', 'Nancy Meyers', '2024-01-06', 10.00, 2500000, 8.0, 95, 3000.00),
(32, 'Romantic Date', 'Romance', 'Richard Curtis', '2024-01-14', 11.00, 1900000, 7.7, 105, 3500.00),
(33, 'Love in Spring', 'Romance', 'Garry Marshall', '2024-01-22', 10.00, 2200000, 8.2, 90, 2800.00),

-- Animation
(41, 'Fantasy Adventure', 'Animation', 'Pete Docter', '2024-01-04', 13.00, 2600000, 9.1, 85, 8000.00),
(42, 'Magic World', 'Animation', 'Chris Buck', '2024-01-16', 12.00, 2300000, 8.9, 90, 7500.00),
(43, 'Fairy Tale Kingdom', 'Animation', 'John Lasseter', '2024-01-25', 14.00, 1800000, 8.6, 88, 6500.00),

-- Thriller
(51, 'Deep Mist', 'Thriller', 'David Fincher', '2024-01-07', 15.00, 1200000, 8.3, 115, 6000.00),
(52, 'Truth Revealed', 'Thriller', 'M. Night Shyamalan', '2024-01-19', 15.00, 1000000, 8.1, 125, 7000.00),
(53, 'Night Hunter', 'Thriller', 'Denis Villeneuve', '2024-01-28', 15.00, 1100000, 7.8, 120, 6800.00);
