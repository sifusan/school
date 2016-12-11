-- Name: Simen Fuglestad
-- Student Registration number: 1606294

use world_news_corp_cms;

SELECT first_name, last_name, age FROM author;

SELECT AVG(age) FROM author WHERE author.gender='Male';

SELECT first_name, last_name, salary FROM author WHERE salary = (select max(salary) from author);

SELECT first_name, last_name FROM author WHERE ni_number IN (select author from writes);

SELECT DISTINCT article.title, article.topic, author.first_name, author.last_name FROM article, author, writes WHERE author.ni_number = (SELECT author FROM writes WHERE writes.article=article.articleID) AND (article.content LIKE '%DAVID CAMERON%' OR article.content LIKE '%George Clooney%');

-- SELECT article.title, article.topic, author.first_name, author.last_name FROM article, author WHERE writes.author = author. article.content LIKE '%David Cameron%';