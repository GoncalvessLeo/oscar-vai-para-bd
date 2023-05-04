# oscar-vai-para-bd
Filtrando o banco de dados do Oscar, para responder diferentes tipos de questões relacionadas as premiações.

 1- Quantas vezes Natalie Portman foi indicada ao Oscar?
 R: 3
 SELECT COUNT(*) FROM movies where name like "%Natalie Portman%";
 
2- Quantos Oscars Natalie Portman ganhou?
R: 1
SELECT COUNT(*) FROM movies where name like "%Natalie Portman%" and winner = 'True';

3- Amy Adams já ganhou algum Oscar?
R: não
SELECT COUNT(*) FROM movies where name like "%Amy Adams%" and winner = 'True';	

4- A série de filmes Toy Story ganhou um Oscar em quais anos?
R: 2011 & 2020
SELECT * FROM movies where film like "%Toy Story%" and winner = 'True';

5- Quem tem mais Oscars: a categoria "Melhor Ator" ou "Melhor Filme"?
R: A categoria "Melhor filme" possui mais premiações.
SELECT COUNT(id_movie) FROM movies WHERE (category = "BEST PICTURE" OR category like "%PICTURE" OR category like "%PRODUCTION")AND WINNER = 'True';
SELECT count(id_movie) FROM movies where category = "ACTOR" AND WINNER = 'True';

6- O primeiro Oscar para melhor Atriz foi para quem? Em que ano?
R: Janet Gaynor / 1928
SELECT * From movies WHERE category = "ACTRESS" and WINNER = 'True' ORDER BY year_ceremony;

7- Na coluna/campo Winner, altere todos os valores com "True" para 1 e todos os valores "False" para 0.
UPDATE movies SET winner = 0 where winner = 'False';
UPDATE movies SET winner = 1 where winner = 'True';

8- Em qual edição do Oscar "Crash" ganhou o prêmio principal?
R:2006
SELECT * FROM movies where film like "Crash" and winner = '1';

9- Bom... dê um Oscar para um filme que merece muito, mas não ganhou.
INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('1980', '2023', '93', 'Best Picture', 'Sean S. Cunningham', 'Sexta feira 13', '1');

10- O filme Central do Brasil aparece no Oscar?
R: Não
SELECT * FROM movies  where film like "Central do Brasil";

11- Inclua no banco 3 filmes que nunca nem foram nomeados ao Oscar, mas que na sua opinião, merecem. 
INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2000', '2023', '93', 'Tosco, mas é bom', 'Keenen Ivory Wayans', 'Todo mundo em pânico', '1');

 INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2003', '2023', '93', 'Tosco, mas é bom', 'Ronny Yu', 'Freddy X Jason', '1');
 
INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2017', '2023', '93', 'Tosco, mas é bom', 'Franck Khalfoun', 'Amityville: O Despertar', '1');



