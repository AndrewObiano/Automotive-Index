-- db indexed_cars

DROP TABLE IF EXISTS car_models;

CREATE TABLE IF NOT EXISTS car_models
(
 id serial,
 make_code character varying(125) NOT NULL,
 make_title character varying(125) NOT NULL,
 model_code character varying(125) NOT NULL,
 model_title character varying(125) NOT NULL,
 year integer NOT NULL,
 PRIMARY KEY (id)
);

CREATE INDEX make_model_title
ON car_models (make_title, model_title);

CREATE INDEX make_model_code
ON car_models (make_code, model_code);

CREATE INDEX car_year
ON car_models (year);