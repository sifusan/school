use ce153;

DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS blog_post;
DROP TABLE IF EXISTS editor;

CREATE TABLE editor (
	USERNAME VARCHAR(40),
    FULL_NAME VARCHAR(40),
    EMAIL VARCHAR(40),
    TITLE_OF_BLOG VARCHAR(40),
    PRIMARY KEY (USERNAME)
    );

CREATE TABLE blog_post (
	BLOG_ID INTEGER,
	POST_TITLE VARCHAR(40),
    CONTENT TEXT,
    CATEGORY ENUM('General', 'Musing', 'Social', 'Work'),
    TIME_STAMP DATETIME,
    AUTHOR VARCHAR(40),
    PRIMARY KEY (BLOG_ID),
    FOREIGN KEY (AUTHOR) REFERENCES editor(USERNAME)
    );

CREATE TABLE comments (
	COMMENT_TITLE VARCHAR(40),
    COMMENTER_NAME VARCHAR(40),
    CONTENT TEXT,
    TIME_STAMP DATETIME,
    BLOG_POST INTEGER,
    FOREIGN KEY (BLOG_POST) REFERENCES blog_post(BLOG_ID)
    );
    
INSERT INTO editor VALUES('authorson', 'John Dingus', 'dingus@wotmail.com', 'u wot?');
INSERT INTO editor VALUES('erik perik', 'John Dingus', 'dingus@wotmail.com', 'u wot?');
INSERT INTO blog_post VALUES (1, 'Bloarg', 'Oh hi this is content.', 'General', NOW(), 'authorson');
INSERT INTO blog_post VALUES (2, 'Bloarg', 'Oh hi this is content.', 'General', NOW(), 'authorson');
INSERT INTO blog_post VALUES (3, 'Bloarg', 'Oh hi this is content.', 'General', NOW(), 'authorson');
INSERT INTO blog_post VALUES (4, 'Bloarg', 'Oh hi this is content.', 'General', NOW(), 'erik perik');
INSERT INTO blog_post VALUES (5, 'Bloarg', 'Oh hi this is content.', 'General', NOW(), 'erik perik');
INSERT INTO blog_post VALUES (6, 'Bloarg', 'Oh hi this is content.', 'General', NOW(), 'erik perik');
INSERT INTO blog_post VALUES (7, 'Bloarg', 'Oh hi this is content.', 'General', NOW(), 'erik perik');
INSERT INTO comments VALUES ('Dette er forferdfelig', 'John Sintesen', 'Dette er lavmåls, kan skrrive betre selv!!!!!1111 x(', NOW(), 4);
INSERT INTO comments VALUES ('Dette er forferdfelig', 'John Sintesen', 'Dette er lavmåls, kan skrrive betre selv!!!!!1111 x(', NOW(), 4);
INSERT INTO comments VALUES ('Dette er forferdfelig', 'John Sintesen', 'Dette er lavmåls, kan skrrive betre selv!!!!!1111 x(', NOW(), 4);
INSERT INTO comments VALUES ('Dette er forferdfelig', 'John Sintesen', 'Dette er lavmåls, kan skrrive betre selv!!!!!1111 x(', NOW(), 4);
INSERT INTO comments VALUES ('Dette er forferdfelig!!', 'John Sintesen', 'Dette er lavmåls, kan skrrive betre selv!!!!!1111 x(', NOW(), 4);
INSERT INTO comments VALUES ('Dette er forferdfelig', 'John Sintesen', 'Dette er lavmåls, kan skrrive betre selv!!!!!1111 x(', NOW(), 4);
INSERT INTO comments VALUES ('Dette er forferdfelig', 'John Sintesen', 'Dette er lavmåls, kan skrrive betre selv!!!!!1111 x(', NOW(), 4);
INSERT INTO comments VALUES ('Dette er forferdfelig', 'John Sintesen', 'Dette er lavmåls, kan skrrive betre selv!!!!!1111 x(', NOW(), 4);
INSERT INTO comments VALUES ('Dette er forferdfelig', 'John Sintesen', 'Dette er lavmåls, kan skrrive betre selv!!!!!1111 x(', NOW(), 4);
INSERT INTO comments VALUES ('Dette er forferdfelig', 'John Sintesen', 'Dette er lavmåls, kan skrrive betre selv!!!!!1111 x(', NOW(), 4);
INSERT INTO comments VALUES ('Dette er forferdfelig', 'John Sintesen', 'Dette er lavmåls, kan skrrive betre selv!!!!!1111 x(', NOW(), 4);
INSERT INTO comments VALUES ('Dette er forferdfelig', 'John Sintesen', 'Dette er lavmåls, kan skrrive betre selv!!!!!1111 x(', NOW(), 4);
INSERT INTO comments VALUES ('Dette er forferdfelig', 'John Sintesen', 'Dette er lavmåls, kan skrrive betre selv!!!!!1111 x(', NOW(), 4); 