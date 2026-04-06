-- create-and-seed.sql
-- Design and seed a table for ONE of the following scenarios:
--
--   A. A restaurant menu
--      Suggested columns: name, cuisine, price, vegetarian, calories, available
--
--   B. A music library
--      Suggested columns: title, artist, genre, year, duration_seconds, streams
--
--   C. A gym class schedule
--      Suggested columns: class_name, instructor, day_of_week, capacity, enrolled, difficulty
--
--   D. A movie collection
--      Suggested columns: title, director, genre, year, runtime_minutes, rating
--
--   E. A bookstore inventory
--      Suggested columns: title, author, genre, price, pages, in_stock
--
-- Requirements:
--   [ ] Creates a new database with an appropriate name
--   [ ] Connects to the database after creating it
--   [ ] Creates a new table with an appropriate name
--   [ ] The seed file can be executed multiple times without causing errors related to the database and/or table already existing
--   [ ] The table has a primary key column with unique, auto-generated, and sequential values
--   [ ] The table has at least 5 additional columns beyond the primary key
--   [ ] The table has at least 3 different data types used
--   [ ] The table has at least one `NOT NULL` constraint
--   [ ] The table has at least one `DEFAULT` value
--   [ ] The table has at least one `UNIQUE` constraint
--   [ ] The table has at least 8 rows of seed data inserted

-- ============================================================
-- Step 1: Create the database
-- ============================================================

DROP DATABASE IF EXISTS music_db;
CREATE DATABASE music_db;
\c music_db


-- ============================================================
-- Step 2: Create the table
-- ============================================================

CREATE TABLE IF NOT EXISTS music (
    music_id            SERIAL          PRIMARY KEY,
    title               TEXT            NOT NULL UNIQUE, 
    artist              TEXT            NOT NULL, 
    genre               TEXT            NOT NULL, 
    year                INT             NOT NULL, 
    duration            NUMERIC(10,2)   NOT NULL,
    streams             INT             NOT NULL,
    isFavorite          BOOLEAN         DEFAULT FALSE
);


-- ============================================================
-- Step 3: Insert seed data (at least 8 rows)
-- ============================================================
INSERT INTO music (title, artist, genre, year, duration, streams, isFavorite) VALUES
('Reprise', 'Jonathan Ogden', 'indie rock', 2026, 3.40, 260000, TRUE),
('Day By Day', 'Jonathan Ogden', 'indie rock', 2026, 3.03, 5000, TRUE),
('What If', 'Jonathan Ogden', 'indie rock', 2026, 3.58, 25000, TRUE),
('Forever & Always', 'Jonathan Ogden', 'indie rock', 2026, 2.58, 7600, TRUE),
('Stay With You', 'Jonathan Ogden', 'indie rock', 2026, 3.27, 30000, TRUE),
('Circles', 'Jonathan Ogden', 'indie rock', 2026, 3.56, 20000, TRUE),
('Running', 'Jonathan Ogden', 'indie rock', 2026, 2.55, 4300, TRUE),
('My Safe Place', 'Jonathan Ogden', 'indie rock', 2026, 3.50, 12000, TRUE),
('In The Light', 'Jonathan Ogden', 'indie rock', 2026, 2.51, 15000, TRUE),
('Brighter Day', 'Jonathan Ogden', 'indie rock', 2026, 4.05, 18000, TRUE),
('Again & Again', 'Jonathan Ogden', 'indie rock', 2026, 4.12, 22000, TRUE),
('Remember', 'Jonathan Ogden', 'indie rock', 2026, 3.40, 17000, TRUE);