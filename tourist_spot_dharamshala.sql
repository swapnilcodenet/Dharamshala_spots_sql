CREATE DATABASE dharamshala_db;
USE dharamshala_db;

CREATE TABLE places (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    type VARCHAR(50),
    entry_fee INT,
    rating FLOAT,
    distance_km FLOAT
);
INSERT INTO places VALUES
(1, 'McLeod Ganj', 'Town', 0, 4.7, 5),
(2, 'Bhagsu Waterfall', 'Nature', 20, 4.5, 7),
(3, 'Triund Trek', 'Trek', 0, 4.8, 9),
(4, 'Dalai Lama Temple', 'Temple', 0, 4.9, 6),
(5, 'HPCA Stadium', 'Stadium', 100, 4.6, 3),
(6, 'Namgyal Monastery', 'Monastery', 0, 4.8, 5),
(7, 'Dal Lake', 'Lake', 30, 4.3, 11),
(8, 'St. John in the Wilderness', 'Church', 0, 4.4, 8);
SELECT * FROM places;
SELECT * FROM places
ORDER BY rating DESC
LIMIT 3;
SELECT * FROM places
WHERE entry_fee = 0;
SELECT * FROM places
WHERE distance_km <= 6;
SELECT * FROM places
WHERE rating >= 4.5 AND distance_km <= 8;
SELECT type, AVG(rating) AS avg_rating
FROM places
GROUP BY type;
SELECT * FROM places
WHERE rating = (SELECT MAX(rating) FROM places);