CREATE USER indexed_cars_user;
 CREATE DATABASE indexed_cars OWNER indexed_cars_user;

 SELECT DISTINCT make_title FROM car_models WHERE make_code = 'LAM';

 SELECT DISTINCT model_title FROM car_models WHERE model_title = 'NISSAN' AND model_code = 'GT-R';

 SELECT make_code, model_code, model_title, year FROM car_models WHERE make_code = 'LAM';
 SELECT * FROM car_models WHERE year=2010 OR YEAR = 2011 OR year= 2012 OR year= 2013 OR year = 2014 OR year=2015;

 SELECT * FROM car_models WHERE year = 2010;

 CREATE INDEX get_all_make_titles ON car_models(make_title);

 CREATE INDEX get_all_model_titles ON car_models (model_title,  model_code);

 CREATE INDEX get_all_make_codes_models_titles ON car_models (make_code);

 CREATE INDEX get_all_model_years ON car_models (year);
 --seeing time diff from indexing 
  SELECT DISTINCT make_title FROM car_models WHERE make_code = 'LAM';

 SELECT DISTINCT model_title FROM car_models WHERE model_title = 'NISSAN' AND model_code = 'GT-R';

 SELECT make_code, model_code, model_title, year FROM car_models WHERE make_code = 'LAM';
 SELECT * FROM car_models WHERE year=2010,2011,2012,2013,2014,2015;

 SELECT * FROM car_models WHERE year = 2010
