
![oscar (2)](https://user-images.githubusercontent.com/125033731/236519898-326fac96-80e3-4a93-b48d-1e29715a888b.png) <h1> Oscar vai para...</h1>
## Filtrando o banco de dados do Oscar, para responder diferentes tipos de questões relacionadas as premiações.

<h3> 1- Quantas vezes Natalie Portman foi indicada ao Oscar? </h3>
 R: 3 - <code>SELECT COUNT(*) FROM movies where name like "%Natalie Portman%"; </code>
 
 ##
 
<h3> 2- Quantos Oscars Natalie Portman ganhou? </h3>
R: 1 - <code>SELECT COUNT(*) FROM movies where name like "%Natalie Portman%" and winner = 'True'; </code>

##

<h3> 3- Amy Adams já ganhou algum Oscar? </h3>
R: não - <code>SELECT COUNT(*) FROM movies where name like "%Amy Adams%" and winner = 'True';	</code>

##

<h3> 4- A série de filmes Toy Story ganhou um Oscar em quais anos? </h3>
R: 2011 & 2020 - <code>SELECT * FROM movies where film like "%Toy Story%" and winner = 'True';</code>

##

<h3> 5- Quem tem mais Oscars: a categoria "Melhor Ator" ou "Melhor Filme"? </h3>
R: MELHOR FILME - COM  93 RESULTADOS - <code>SELECT COUNT(id_movie) FROM movies WHERE (category = "BEST PICTURE" OR category like "%PICTURE" OR category like "%PRODUCTION")AND WINNER = 'True'; </code> || - <code>SELECT count(id_movie) FROM movies where category = "ACTOR" AND WINNER = 'True'; </code>

##

<h3> 6- O primeiro Oscar para melhor Atriz foi para quem? Em que ano? </h3>
R: Janet Gaynor / 1928 - <code>SELECT * From movies WHERE category = "ACTRESS" and WINNER = 'True' ORDER BY year_ceremony; </code>

##

<h3> 7- Na coluna/campo Winner, altere todos os valores com "True" para 1 e todos os valores "False" para 0. </h3>
- <code>UPDATE movies SET winner = 0 where winner = 'False';</code> - <code>UPDATE movies SET winner = 1 where winner = 'True';</code>

##

<h3> 8- Em qual edição do Oscar "Crash" ganhou o prêmio principal? </h3>
R:2006 - <code>SELECT * FROM movies where film like "Crash" and winner = '1';</code>

##

<h3> 9- Bom... dê um Oscar para um filme que merece muito, mas não ganhou. </h3>
R: Sexta feira 13 (1980) - <code>INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('1980', '2023', '93', 'Best Picture', 'Sean S. Cunningham', 'Sexta feira 13', '1');</code>

##

<h3> 10- O filme Central do Brasil aparece no Oscar? </h3>
R: Não - <code>SELECT * FROM movies  where film like "Central do Brasil";</code>

##

<h3> 11- Inclua no banco 3 filmes que nunca nem foram nomeados ao Oscar, mas que na sua opinião, merecem. </h3> 
R: 1° Todo mundo em Pânico. - <code>INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2000', '2023', '93', 'MELHOR FILME', 'Keenen Ivory Wayans', 'Todo mundo em pânico', '1'); </code>

<br>
<br>

R: 2° Freddy X Jason. - <code>INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2003', '2023', '93', 'MELHOR FILME', 'Ronny Yu', 'Freddy X Jason', '1'); </code>
 
R: 3° Amityville: O Despertar. - <code>INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2017', '2023', '93', 'MELHOR FILME', 'Franck Khalfoun', 'Amityville: O Despertar', '1'); </code>

##

<h3> 12- Crie uma nova categoria de premiação. Qualquer prêmio que você queira dar. Agora vamos dar esses prêmios aos filmes que você cadastrou na questão acima. </h3>
R: <code>- ALTER TABLE movies ADD PRÊMIO varchar(225);  || - UPDATE `movies` SET `PRÊMIO`='TOSCO, MAS É BOM' WHERE category LIKE '%MELHOR FILME%';</code>

##

<h3> 13- Qual foi o primeiro ano a ter um prêmio do Oscar? </h3>
R: 1928 - <code> SELECT * FROM movies where winner = '1'; </code>

##

<h3> 14 - Pensando no ano em que você nasceu: Qual foi o Oscar de melhor filme, Melhor Atriz e Melhor Diretor? </h3>
R: MELHOR FILME:(Million Dollar Baby) - <code>SELECT * FROM movies where year_ceremony like '2005' and category like '%BEST PICTURE%' and winner = 1; </code> <br>

R: MELHOR ATRIZ:(Hilary Swank) - <code>SELECT * FROM movies where year_ceremony like '%2005%' and category like '%ACTRESS%' and winner = 1; </code><br>

R: MELHOR DIRETOR:(Clint Eastwood) - <code>SELECT * FROM movies where year_ceremony like '%2005%' and category like '%DIRECTING%' and winner = 1; </code>

##

<h3> 15- Agora procure 7 atrizes que não sejam americanas, europeias ou brasileiras.  Vamos cadastrá-los no nosso banco, mas eles ainda não ganharam o Oscar. Só foram nomeados. </h3>

R: Amy Ruffle - <code>INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner, PRÊMIO) VALUES ('2013', '2023', '93', 'ACTRESS', 'Amy Ruffle', 'Mako Mermaids', '0', ''); </code>

<br>

R: Allie Bertram - <code>INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner, PRÊMIO) VALUES ('2013', '2023', '93', 'ACTRESS', 'Allie Bertram', 'Mako Mermaids', '0', '');</code>

<br>

R: Margot Robbie - <code>INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner, PRÊMIO) VALUES ('2016', '2023', '93', 'ACTRESS', 'Margot Robbie', 'Esquadrão Suicida', '0', '');</code>

<br>

R: Jung So-min - <code>INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner, PRÊMIO) VALUES ('2022', '2023', '93', 'ACTRESS', 'Jung So-min', 'Alquimia das Almas', '0', '');</code>

<br>

R: Go Youn-jung - <code>INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner, PRÊMIO) VALUES ('2022', '2023', '93', 'ACTRESS', 'Go Youn-jung', 'Alquimia das Almas', '0', '');</code>

<br>

R: Michelle Yeoh - <code>INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner, PRÊMIO) VALUES ('2021', '2023', '93', 'ACTRESS', 'Michelle Yeoh', 'Shang-Chi e a Lenda dos Dez Anéis', '0', '');</code>

<br>

R: Charlize Theron - <code>INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner, PRÊMIO) VALUES ('2022', '2023', '93', 'ACTRESS', 'Charlize Theron', 'Escola do bem e do mal', '0', '');</code>

##

<h3> 16- Agora vamos falar da sua vida. Me diga o nome de uma pessoa que você admira e o que ela fez na sua vida. Agora me diz: Quê prêmio essa pessoa merece?</h3> 

R: Essa premiação vai para a minha irmazinha de 2 anos, Lavínia, que por mais recente que seja, ela me deu uma visão de mundo totalmente diferente e principalmente como é ter a sensação de proteção, tudo o que eu faço hoje em dia é para poder dar o melhor para ela e para meus pais. 

<br>

- <code>INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner, PRÊMIO) VALUES ('2020', '2023', '94', 'EVOLUÇÃO', 'Lavínia Gonçalves de Sousa', 'MINHA INSPIRAÇÃO', '1', 'MINHA NENENZINHA');</code> 

<br>

- <code>SELECT * FROM movies where name = 'Lavínia Gonçalves de Sousa';</code>











