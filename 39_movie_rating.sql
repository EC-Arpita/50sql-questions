-- Problem: Movie Rating

-- Table Structures
DROP TABLE IF EXISTS Movies;
CREATE TABLE Movies (
    movie_id INT PRIMARY KEY,
    title VARCHAR(50)
);

DROP TABLE IF EXISTS Users;
CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    name VARCHAR(50)
);

DROP TABLE IF EXISTS MovieRating;
CREATE TABLE MovieRating (
    movie_id INT,
    user_id INT,
    rating INT,
    created_at DATE,
    PRIMARY KEY (movie_id, user_id),
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

-- Solution Query
(
    SELECT name AS results
    FROM Users u
    JOIN MovieRating mr ON u.user_id = mr.user_id
    GROUP BY u.user_id
    ORDER BY COUNT(*) DESC, u.name
    LIMIT 1
)
UNION ALL
(
    SELECT title AS results
    FROM Movies m
    JOIN MovieRating mr ON m.movie_id = mr.movie_id
    WHERE mr.created_at BETWEEN '2020-02-01' AND '2020-02-28'
    GROUP BY m.movie_id
    ORDER BY AVG(mr.rating) DESC, m.title
    LIMIT 1
);
