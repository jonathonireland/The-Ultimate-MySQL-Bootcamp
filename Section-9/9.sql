-- Section 9.132

SELECT COUNT(*) FROM books;
 
SELECT COUNT(author_lname) FROM books;
 
SELECT COUNT(DISTINCT author_lname) FROM books;

-- Section 9.134 

SELECT author_lname, COUNT(*) 
FROM books
GROUP BY author_lname;
 
SELECT 
    author_lname, COUNT(*) AS books_written
FROM
    books
GROUP BY author_lname
ORDER BY books_written DESC;

-- Section 9.136

SELECT MAX(pages) FROM books;
 
SELECT MIN(author_lname) FROM books;

-- Section 9.138

SELECT title, pages FROM books
WHERE pages = (SELECT MAX(pages) FROM books);
 
SELECT MIN(released_year) FROM books;
 
SELECT title, released_year FROM books 
WHERE released_year = (SELECT MIN(released_year) FROM books);

-- Section 9.140

SELECT author_fname, author_lname, COUNT(*) 
FROM books 
GROUP BY author_lname, author_fname;
 
 
SELECT CONCAT(author_fname, ' ', author_lname) AS author,  COUNT(*)
FROM books
GROUP BY author;

-- Section 9.142

SELECT author_lname, MIN(released_year) FROM books GROUP BY author_lname;
 
SELECT author_lname, MAX(released_year), MIN(released_year) FROM books GROUP BY author_lname;
 
SELECT 
	author_lname, 
	COUNT(*) as books_written, 
	MAX(released_year) AS latest_release,
	MIN(released_year)  AS earliest_release,
      MAX(pages) AS longest_page_count
FROM books GROUP BY author_lname;
 
 
SELECT 
	author_lname, 
        author_fname,
	COUNT(*) as books_written, 
	MAX(released_year) AS latest_release,
	MIN(released_year)  AS earliest_release
FROM books GROUP BY author_lname, author_fname;

-- Section 9.144

SELECT SUM(pages) FROM books;
 
 
SELECT author_lname, COUNT(*), SUM(pages)
FROM books
GROUP BY author_lname;

-- Section 9.146

SELECT AVG(pages) FROM books;
 
SELECT AVG(released_year) FROM books;
 
SELECT 
    released_year, 
    AVG(stock_quantity), 
    COUNT(*) FROM books
GROUP BY released_year;

-- Section 9.147

SELECT COUNT(*) FROM books;

SELECT DISTINCT released_year, COUNT(*) FROM books 
GROUP BY released_year;

SELECT SUM(stock_quantity) from books;

SELECT CONCAT(author_fname,' ',author_lname), AVG(released_year) from books GROUP BY author_fname, author_lname;

SELECT CONCAT(author_fname,' ',author_lname) AS 'Full Name', pages FROM books ORDER BY pages DESC LIMIT 1;

SELECT 
    released_year,  
    COUNT(*) AS '# books',
    AVG(pages)
     FROM books
GROUP BY released_year ORDER BY released_year;

-- Section 9.150 SOLUTION CODE

SELECT COUNT(*) FROM books;
 
SELECT released_year, COUNT(*) 
FROM books GROUP BY released_year;
 
SELECT AVG(released_year) 
FROM books GROUP BY author_lname, author_fname;
 
 
SELECT CONCAT(author_fname, ' ', author_lname) AS author, pages FROM books
WHERE pages = (SELECT MAX(pages) FROM books);
 
SELECT CONCAT(author_fname, ' ', author_lname) AS author, pages FROM books
ORDER BY pages DESC LIMIT 1;
 
 
SELECT 
    released_year AS year,
    COUNT(*) AS '# books',
    AVG(pages) AS 'avg pages'
FROM books
GROUP BY released_year
ORDER BY released_year;




