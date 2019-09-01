SELECT DISTINCT make_title
FROM car_models
WHERE make_code = 'LAM';
-- 71.540ms

SELECT DISTINCT model_title
FROM car_models
WHERE make_code = 'NISSAN' AND model_code = 'GT-R';
-- 48.984ms

SELECT *
FROM car_models
WHERE make_code = 'LAM';
-- 72.179ms

SELECT *
FROM car_models
WHERE year BETWEEN 2010 AND 2015;
-- 267.859ms

SELECT *
FROM car_models
WHERE year = 2010;
-- 64.532ms

CREATE INDEX make_model_title
ON car_models (make_title, model_title);

CREATE INDEX make_model_code
ON car_models (make_code, model_code);

CREATE INDEX car_year
ON car_models (year);

SELECT DISTINCT make_title
FROM car_models
WHERE make_code = 'LAM';
-- 1.115ms

SELECT DISTINCT model_title
FROM car_models
WHERE make_code = 'NISSAN' AND model_code = 'GT-R';
-- 0.529ms

SELECT *
FROM car_models
WHERE make_code = 'LAM';
-- 3.041ms

SELECT *
FROM car_models
WHERE year BETWEEN 2010 AND 2015;
-- 252.433ms

SELECT *
FROM car_models
WHERE year = 2010;
-- 29.711ms