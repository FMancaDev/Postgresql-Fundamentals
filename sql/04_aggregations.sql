SELECT COUNT(*) FROM books;

SELECT
	authors.name AS author_name,
	COUNT(books.id) AS total_books -- conta qnts liros existem por autor
FROM authors
JOIN books
	ON authors.id = books.author_id
GROUP BY authors.name;

SELECT MIN(year_of_publication), MAX(year_of_publication)
FROM books
