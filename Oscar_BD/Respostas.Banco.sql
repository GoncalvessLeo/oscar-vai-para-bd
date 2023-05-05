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

-- INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2000', '2023', '93', 'MELHOR FILME', 'Keenen Ivory Wayans', 'Todo mundo em pânico', '1'); 
-- INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2003', '2023', '93', 'MELHOR FILME', 'Ronny Yu', 'Freddy X Jason', '1');
-- INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2017', '2023', '93', 'MELHOR FILME', 'Franck Khalfoun', 'Amityville: O Despertar', '1');

-- ALTER TABLE movies ADD PRÊMIO varchar(225);
-- update `movies` SET `PRÊMIO`='TOSCO, MAS É BOM' WHERE category LIKE '%MELHOR FILME%';

-- SELECT * FROM movies where winner = '1';

-- SELECT * FROM movies where year_ceremony like '%2005%' and category like '%DIRECTING%' and winner = 1;

-- INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner, PRÊMIO) VALUES ('2013', '2023', '93', 'ACTRESS', 'Amy Ruffle', 'Mako Mermaids', '0', '');
-- INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner, PRÊMIO) VALUES ('2013', '2023', '93', 'ACTRESS', 'Allie Bertram', 'Mako Mermaids', '0', '');
-- INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner, PRÊMIO) VALUES ('2016', '2023', '93', 'ACTRESS', 'Margot Robbie', 'Esquadrão Suicida', '0', '');
-- INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner, PRÊMIO) VALUES ('2022', '2023', '93', 'ACTRESS', 'Jung So-min', 'Alquimia das Almas', '0', '');
-- INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner, PRÊMIO) VALUES ('2022', '2023', '93', 'ACTRESS', 'Go Youn-jung', 'Alquimia das Almas', '0', '');
-- INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner, PRÊMIO) VALUES ('2021', '2023', '93', 'ACTRESS', 'Michelle Yeoh', 'Shang-Chi e a Lenda dos Dez Anéis', '0', '');
-- INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner, PRÊMIO) VALUES ('2022', '2023', '93', 'ACTRESS', 'Charlize Theron', 'Escola do bem e do mal', '0', '');

-- INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner, PRÊMIO) VALUES ('2020', '2023', '94', 'EVOLUÇÃO', 'Lavínia Gonçalves de Sousa', 'MINHA INSPIRAÇÃO', '1', 'MINHA NENENZINHA');
-- SELECT * FROM movies where name = 'Lavínia Gonçalves de Sousa';
