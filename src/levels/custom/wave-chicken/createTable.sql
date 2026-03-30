CREATE TABLE if not exists chicken_observation (
    observation_id INT,
    observer_name VARCHAR(50),
    observation_date DATE,
    observation_location VARCHAR(50),
    wave_intensity INT
);

INSERT INTO chicken_observation (observation_id, observer_name, observation_date, observation_location, wave_intensity)
VALUES
    (1, 'John', '2023-08-01', 'Wave Chicken Beach', 8),
    (2, 'Mike', '2023-08-02', 'Malibu Beach', 4),
    (3, 'Sarah', '2023-08-03', 'Wave Chicken Beach', 9),
    (4, 'Emma', '2023-08-04', 'Waikiki Beach', 7),
    (5, 'Tom', '2023-08-05', 'Wave Chicken Beach', 6),
    (6, 'Lisa', '2023-08-06', 'Copacabana Beach', 3),
    (7, 'David', '2023-08-07', 'Wave Chicken Beach', 6),
    (8, 'Anna', '2023-08-08', 'Bondi Beach', 9),
    (9, 'Chris', '2023-08-09', 'Wave Chicken Beach', 5),
    (10, 'Kate', '2023-08-10', 'Miami Beach', 8);
