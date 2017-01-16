-- Name: Simen Fuglestad
-- Student Registration number: 1606294

create database if not exists world_news_corp_cms;
use world_news_corp_cms;

DROP TABLE IF EXISTS writes;
DROP TABLE IF EXISTS likes_article;
DROP TABLE IF EXISTS has_comments;
DROP TABLE IF EXISTS likes;
DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS author;
DROP TABLE IF EXISTS article;

CREATE TABLE author (
	ni_number BIGINT,
    first_name VARCHAR(40),
    last_name VARCHAR(40),
    country VARCHAR(40),
    age INTEGER,
    salary INTEGER,
    gender VARCHAR(40),
    PRIMARY KEY(ni_number));


CREATE TABLE article (
	articleID INTEGER,
    title VARCHAR(50),
    content TEXT(50000),
    topic ENUM('financial', 'Politics', 'Sports', 'Science', 'Entertainment'),
    date_written DATETIME,
    country VARCHAR(40),
    PRIMARY KEY(articleID));


CREATE TABLE writes (
	article INTEGER,
    author BIGINT,
    FOREIGN KEY (article) REFERENCES article(articleID),
    FOREIGN KEY (author) REFERENCES author(ni_number));


CREATE TABLE comments (
	commentID INTEGER,
    username VARCHAR(40),
    date_written DATETIME,
    content TEXT(100),
    PRIMARY KEY (commentID));


CREATE TABLE has_comments (
	comments INTEGER,
    article INTEGER,
    FOREIGN KEY (comments) REFERENCES comments(commentID),
    FOREIGN KEY (article) REFERENCES article(articleID));

CREATE TABLE likes (
	likeID INTEGER,
	date_liked DATETIME,
    PRIMARY KEY (likeID));


CREATE TABLE likes_article (
	article INTEGER,
    likes INTEGER,
    FOREIGN KEY (likes) REFERENCES likes(likeID),
    FOREIGN KEY (article) REFERENCES article(articleID));

INSERT INTO author VALUES(1987234920, 'John', 'Smith', 'England', 34, 20000, 'Male');
INSERT INTO author VALUES(9348098234, 'Tom', 'Potter', 'Scotland', 32, 32000, 'Male');
INSERT INTO author VALUES(4564547547, 'Jack', 'Kingsman', 'India', 23, 14000, 'Male');
INSERT INTO author VALUES(5654674575, 'Chris', 'Trethick', 'India', 45, 24000, 'Male');
INSERT INTO author VALUES(5675675675, 'Dave', 'Carter', 'Ireland', 56, 40000, 'Male');
INSERT INTO author VALUES(7775656765, 'Ian', 'Packwood', 'England', 33, 32000, 'Male');
INSERT INTO author VALUES(8964334324, 'Lucy', 'Teague', '	America', 18, 20000, 'Female');
INSERT INTO author VALUES(6612355667, 'Jane', 'Connor', 'France', 19, 49000, 'Female');
INSERT INTO author VALUES(3456456457, 'Mary', 'Van Schimdt', 'France', 42, 32000, 'Female');
INSERT INTO author VALUES(1875432325, 'Liz', 'Fogarty', 'America', 53, 34000, 'Female');
INSERT INTO author VALUES(1134576877, 'Emma', 'Baker', 'England', 37, 20000, 'Female');
INSERT INTO author VALUES(2345457654, 'Anne', 'Nuttley', 'Indonesia', 43, 34000, 'Female');


INSERT INTO article VALUES(1, 'Europe crackdown on jihadist network', 'Police target 17 people in raids in several European countries on suspicion of links to a jihadist network.', 'Politics', NOW(), 'England');
INSERT INTO writes VALUES (1, 1987234920);
INSERT INTO article VALUES(2, 'Modi visit historic opportunity for UK', 'Indian prime minister arrives in the UK for a three day visit, described by David Cameron as a historic opportunity for both countries.', 'Politics', NOW(), 'India');
INSERT INTO writes VALUES (2, 9348098234);
INSERT INTO article VALUES(3, 'Sweden brings in migrant border checks', 'Sweden brings in temporary border checks to control the flow of migrants into the country, as an EU Africa summit continues.', 'Politics', NOW(), 'Sweden');
INSERT INTO writes VALUES(3, 5675675675);
INSERT INTO article VALUES(4, 'Apple apologises after racism outcry', 'Apple apologises to six schoolboys who were asked to leave one of their shops in Australia, in what the students described as a racist incident.', 'Financial', NOW(), 'Asutralia');
INSERT INTO writes VALUES (4, 7775656765);
INSERT INTO article VALUES(5, 'HMRC reveals tax office shake-up', 'The UKs tax authority will close 137 local offices and replace them with 13 regional centres, raising fears over job losses.', 'Financial', NOW(), 'England');
INSERT INTO writes VALUES(5, 1134576877);
INSERT INTO article VALUES(6, 'Film star visits cafe for homeless', 'Hollywood star George Clooney visits a sandwich shop which helps homeless people during a visit to Edinburgh.', 'Entertainment', NOW(), 'Scotland');
INSERT INTO writes VALUES(6, 1987234920);
INSERT INTO article VALUES(7, 'Rolls-Royce shares dive on profit woes', 'Shares in aerospace group RollsRoyce sink after it warns that its profits will be hit by sharply weaker demand.', 'Financial', NOW(), 'England');
INSERT INTO writes VALUES(7, 1134576877);
INSERT INTO article VALUES(8, 'Ex-MPs GBP13,700 on shredding and skips', 'The Independent Parliamentary Standards Authority releases expenses claims for 182 MPs who left the Commons at the election - with GBP705,000 spent on closing down their offices.', 'Politics', NOW(), 'England');
INSERT INTO writes VALUES(8, 1134576877);
INSERT INTO article VALUES(9, 'Action needed to protect UK coast', 'The UK is ignoring known risks of flood and erosion at the coast and immediate action is needed to manage the threats, the National Trust warns.', 'Science', NOW(), 'England');
INSERT INTO writes VALUES(9, 3456456457);
INSERT INTO article VALUES(10, 'Venus twin excites astronomers', 'Astronomers hunting distant worlds say they have made one of their most significant discoveries to date, what could be a kind of hot twin to our Venus.', 'Science', NOW(), 'America');
INSERT INTO writes VALUES (10, 2345457654);

INSERT INTO comments VALUES(1, 'Richard', NOW(), 'I like astronomy');
INSERT INTO has_comments VALUES(1, 10); 
INSERT INTO comments VALUES (2, 'Anne', NOW(), 'Seems like apple messed up');
INSERT INTO has_comments VALUES(2, 4);
INSERT INTO comments VALUES (3, 'anonymous123', NOW(), 'I swear he\'s doing it for PR');
INSERT INTO has_comments VALUES(3, 6);
INSERT INTO comments VALUES (4, 'James', NOW(), 'What a cool guy');
INSERT INTO has_comments VALUES(4, 6);
INSERT INTO comments VALUES (5, 'Mia', NOW(), 'How come this hasn\'t been dealt with before?');
INSERT INTO has_comments VALUES(5, 9);

INSERT INTO likes VALUES(1, NOW());
INSERT INTO likes VALUES(2, '2016-12-11');
INSERT INTO likes_article VALUES(1, 1); 
INSERT INTO likes_article VALUES(1, 2);
INSERT INTO likes VALUES(3, '2016-10-2');
INSERT INTO likes VALUES(4, '2016-11-30');
INSERT INTO likes VALUES(5, '2016-11-30');
INSERT INTO likes_article VALUES(2, 3);
INSERT INTO likes_article VALUES(2, 4);
INSERT INTO likes_article VALUES(2, 5);
INSERT INTO likes VALUES (6, NOW());
INSERT INTO likes VALUES(7, '2016-11-29');
INSERT INTO likes VALUES(8, '2016-11-5');
INSERT INTO likes_article VALUES(10, 6);
INSERT INTO likes_article VALUES(10, 7);
INSERT INTO likes_article VALUES(10, 8)