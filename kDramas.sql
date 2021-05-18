-- FOR LOCAL OR MYSQL DEV ONLY --
DROP DATABASE IF EXISTS `Korean_Dramas`;
CREATE DATABASE `Korean_Dramas`;
USE `Korean_Dramas`;
-- FOR LOCAL OR MYSQL DEV ONLY --


CREATE TABLE `dramas` (
    `id` int NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(225),
    `primary_genre_id` int,
    `secondary_genre_id` int,
    `tertiary_genre_id` int,
    `number_of_episodes` int,
    `director_id` int,
    `primary_writer_id` int,
    `secondary_writer_id` int,
    `year_released` int,
    `network_viewership` VARCHAR(10),
    `imdb_rating` VARCHAR(10),
    `synopsis` VARCHAR(255),
    PRIMARY KEY (`id`)
);

INSERT INTO dramas (title, primary_genre_id, secondary_genre_id, tertiary_genre_id, number_of_episodes, director_id, primary_writer_id, secondary_writer_id, year_released, network_viewership, imdb_rating, synopsis)
VALUES ('The World of the Married', 1, 2, 3, 16, 1, 2, 1, 2020, '18.80%', '8.1/10', 'A story about a married couple whose betrayal of one another leads to a whirlwind of revenge.'),
('Sky Castle', 4, 5, 6,	20,	2, 3, 1, 2018, '12.50%', '8.7/10', 'A satirical drama that closely looks at the materialistic desires of the upper-class parents in South Korea and how they ruthlessly secure the successes of their families at the cost of destroying others lives.'),
('Crash Landing on You', 1, 13,	13,	16,	3, 4, 1, 2019, '12.40%', '8.7/10', 'A paragliding mishap drops a South Korean heiress in North Korea - and into the life of an army officer, who decides he will help her hide.'),
('Goblin', 7, 1, 5,	16,	4, 5, 1, 2016, '12.80%', '8.6/10', 'In his quest for a bride to break his immortal curse, Dokkaebi, a 939-year-old guardian of souls, meets a grim reaper and a sprightly student with a tragic past.'),
('Reply 1988', 8, 9, 1,	20,	6, 10, 1, 2015, '12.31%', '9.1/10',	'Follows the lives of 5 families living on the same street in a neighbourhood called Ssangmundong in Seoul. A nostalgic look back at the year 1988.'),
('Mr. Sunshine', 10, 5, 1, 24, 4, 5, 1, 2018, '12.95%','8.8/10', 'A young boy who ends up in the U.S. after the 1871 Shinmiyangyo incident returns to Korea at a historical turning point and falls for a noblewoman.'),
('Mr. Queen', 10, 9, 1, 20, 5, 6, 7, 2020, '12.60%', '8.7/10', 'When a modern day chef gets trapped in the body of a queen in the Joseon era, chaos ensues.'),
('Itaewon Class', 5, 13, 13, 16, 7, 8, 1, 2020, '11.80%', '8.2/10', 'An ex-con and his friends fight to make their ambitious dreams for their street bar a reality.'),
('Hospital Playlist', 11, 12, 9, 12, 6, 10, 1, 2020, '11.00%', '8.7/10', 'Hospital Playlist tells the story of five doctors who have been friends since they entered medical school in 1999.'),
('100 Days My Prince', 10, 1, 9, 16, 8, 9, 1, 2018, '9.00%', '7.6/10', 'Crown prince Lee Yul falls off a cliff and nearly dies in an attempted assassination. He loses his memory and wanders for 100 days under a new name and personality. During this period, he meets Hong Sim, head of the first detective agency in Joseon.');





CREATE TABLE `genre_table` (
    `id` int NOT NULL AUTO_INCREMENT,
    `genre` varchar(255),
    PRIMARY KEY (`id`)
);

INSERT INTO genre_table (genre)
VALUES ('romance'),
('melodrama'),
('thriller'),
('satire'),
('drama'),
('mystery'),
('fantasy'),
('family'),
('comedy'),
('historical'),
('medical'),
('slice_of_life'),
('none');



CREATE TABLE `director_table` (
    `id` int NOT NULL AUTO_INCREMENT,
    `director` varchar(255),
    PRIMARY KEY (`id`)
);

INSERT INTO director_table (director)
VALUES ('Mo Wan-il'),
('Jo Hyun-tak'),
('Lee Jung-hyo'),
('Lee Eung-bok'),
('Yoon Sung-shik'),
('Shin Won-ho'),
('Kim Sung-yoon'),
('Lee Jong-jae');





CREATE TABLE `writer_table` (
    `id` int NOT NULL AUTO_INCREMENT,
    `writer` varchar(255),
    PRIMARY KEY (`id`)
);

INSERT INTO writer_table (writer)
VALUES ('none'),
('Joo Hyun'),
('Yoo Hyun-mi'),
('Park Ji-eun'),
('Kim Eun-sook'),
('Park Gye-ok'),
('Choi Ah-il'),
('Jo Gwang-jin'),
('No Ji-sul'),
('Lee Woo-jung');




CREATE TABLE `actor_table` (
    `id` int NOT NULL AUTO_INCREMENT,
    `actor` varchar(255),
    PRIMARY KEY (`id`)
);

INSERT INTO actor_table (actor)
VALUES ('Kim Hee-ae'),
('Park Hae-Joon'),
('So-hee Han'),
('Kim Young-Min'),
('Yum Jung-ah'),
('Lee Tae-ran'),
('Yoon Se-ah'),
('Oh Na-ra'),
('Kim Seo-hyung'),
('Hyun Bin'),
('Son Ye-jin'),
('Gong Yoo'),
('Kim Go-eun'),
('Lee Hye-ri'),
('Park Bo-gum'),
('Lee Byung-hun'),
('Kim Tae-ri'),
('Shin Hye-sun'),
('Kim Jung-hyun '),
('Park Seo-joon'),
('Jo Jung-suk'),
('Yoo Yeon-seok'),
('Jung Kyung-ho'),
('Kim Dae-myung'),
('Jeon Mi-do'),
('Do Kyung-soo'),
('Nam Ji-hyun');




CREATE TABLE `drama_to_actor` (
    `dramas_id` int,
    `actor_id` int
);


INSERT INTO drama_to_actor (dramas_id, actor_id)
VALUES (1,1),
(1,2),
(1,3),
(1,4),
(2,5),
(2,6),
(2,7),
(2,8),
(2,9),
(3,10),
(3,11),
(4,12),
(4,13),
(5,14),
(5,15),
(6,16),
(6,17),
(7,18),
(7,19),
(8,20),
(9,21),
(9,22),
(9,23),
(9,24),
(9,25),
(10,26),
(10,27);




CREATE TABLE `contacts` (
    `id` mediumint(8) unsigned NOT NULL auto_increment,
    `first_name` varchar(255) default NULL,
    `last_name` varchar(255) default NULL,
    `email` varchar(255) default NULL,
    `message` TEXT default NULL,
    PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
    `id` mediumint(8) unsigned NOT NULL auto_increment,
    `title` TEXT default NULL,
    `body` TEXT default NULL,
    PRIMARY KEY (`id`)
);


INSERT INTO pages (title, body)
VALUES ('Home', 'Find your next drama by browing our entire collection'),
('About', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Delectus ad minima laboriosam excepturi qui suscipit temporibus veniam debitis aliquam tempore maxime, dolores rem optio officia quos, doloribus, illo vero neque. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Harum quia, explicabo dicta debitis, delectus facilis sint deserunt consectetur omnis tempore veniam eaque cupiditate aperiam neque, nobis libero est accusamus maiores!'),
('Genre', 'Looking for a certain something...browse by genre below!'),
('Actors', 'Find the latest drama from your favorite actor or actress below!'),
('Contact Page', 'Got a request? Let us know below!')


UPDATE pages
SET body = 'Find your next drama by browsing our entire collection',
title = 'Drama Central'
WHERE id = 1;

UPDATE pages
SET body = "Hi, we're glad you're here. We made this site as a place where Korean Drama Lovers could    come and easily find a their next favorite drama. If you love dramas as much as we do, I'm sure you'll enjoy your time here with us. Nevertheless, I still feel I must tell you to make yourself at home. If you have some suggestions, shoot them to us on our contact page.  Oh, before I forget, we've included information such as genre and rating to make it easier for you to choose.",
title = 'Welcome Home'
WHERE id = 2;

UPDATE pages
SET title = "Contact Us"
WHERE id = 5;


ALTER TABLE dramas
ADD dramaPic varchar(255);

UPDATE dramas
SET dramaPic = 'twom.jpeg'
WHERE id = 1;

UPDATE dramas
SET dramaPic = 'skyCastle.jpeg'
WHERE id = 2;

UPDATE dramas
SET dramaPic = 'cloy.png'
WHERE id = 3;

UPDATE dramas
SET dramaPic = 'goblin.jpeg'
WHERE id = 4;

UPDATE dramas
SET dramaPic = 'reply.jpeg'
WHERE id = 5;

UPDATE dramas
SET dramaPic = 'ms.jpeg'
WHERE id = 6;

UPDATE dramas
SET dramaPic = 'mq.jpeg'
WHERE id = 7;

UPDATE dramas
SET dramaPic = 'ic.jpg'
WHERE id = 8;

UPDATE dramas
SET dramaPic = 'hp.jpeg'
WHERE id = 9;

UPDATE dramas
SET dramaPic = 'hmp.jpeg'
WHERE id = 10;
