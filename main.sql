CREATE DATABASE article_db;
CREATE TABLE authors (
    author_id INT PRIMARY KEY,
    author_name VARCHAR(100) NOT NULL,
    author_email VARCHAR(100) NOT NULL UNIQUE
);
CREATE TABLE articles (
    article_id INT PRIMARY KEY,
    article_name VARCHAR(100) NOT NULL,
    article_content TEXT NOT NULL,
    author_id INT NOT NULL,
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
);

--inserting data into table authors
INSERT INTO authors (author_id, author_name, author_email) VALUES (1, 'John Doe', 'john@gmail.com');
INSERT INTO authors (author_id, author_name, author_email) VALUES (2, 'Jane Dole', 'jane@gmail.com');
insert INTO authors (author_id, author_name, author_email) VALUES (3, 'Kevin Smith', 'kevin@gmail.com');

--inserting data into table articles
INSERT INTO articles (article_id, article_name, article_content, author_id) VALUES (101, 'Pollution', '.............', 1);
INSERT INTO articles (article_id, article_name, article_content, author_id) VALUES (102, 'Global Warming', '????????????', 1);
INSERT INTO articles (article_id, article_name, article_content, author_id) VALUES (103, 'Recycling', '!!!!!!!!!!', 2);

--VIEWING DATA 
SELECT * FROM authors;
SELECT * FROM articles;

--article written by john doe
SELECT article.article_name, article.article_content 
FROM articles, authors
WHERE article.author_name = 'John Doe';


--we only want article name, article content and author name for those who have published articles
SELECT article.article_name, article.article_content, authors.author_name
FROM articles, authors
WHERE article.author_id = authors.author_id;

-- printing names of authors who's name starts with alphabet J
SELECT author_name
FROM authors
WHERE author_name LIKE 'J%';
