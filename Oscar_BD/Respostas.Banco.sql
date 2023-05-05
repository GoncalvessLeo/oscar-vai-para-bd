-- SELECT COUNT(*) FROM movies where name like "%Natalie Portman%" and winner = 'True';

-- SELECT COUNT(*) FROM movies where name like "%Amy Adams%" and winner = 'True';

-- SELECT * FROM movies where film like "%Toy Story%" and winner = 'True';	


-- SELECT COUNT(id_movie) FROM movies WHERE (category = "BEST PICTURE" OR category like "%PICTURE" OR category like "%PRODUCTION")AND WINNER = 'True';

-- SELECT count(id_movie) FROM movies where category = "ACTOR" AND WINNER = 'True';

-- SELECT * From movies WHERE category = "ACTRESS" and WINNER = 'True' ORDER BY year_ceremony;

-- UPDATE movies SET winner = 0 where winner = 'False';
-- UPDATE movies SET winner = 1 where winner = 'True';

-- SELECT * FROM movies where film like "Crash" and winner = '1';

-- INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('1980', '2023', '93', 'Best Picture', 'Sean S. Cunningham', 'Sexta feira 13', '1');

-- SELECT * FROM movies  where film like "Central do Brasil";

-- INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2000', '2023', '93', 'Tosco, mas é bom', 'Keenen Ivory Wayans', 'Todo mundo em pânico', '1'); 
-- INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2003', '2023', '93', 'Tosco, mas é bom', 'Ronny Yu', 'Freddy X Jason', '1');
-- INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2017', '2023', '93', 'Tosco, mas é bom', 'Franck Khalfoun', 'Amityville: O Despertar', '1');