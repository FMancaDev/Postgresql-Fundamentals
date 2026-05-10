SELECT * FROM authors;

SELECT * FROM authors
WHERE nationality = 'Português';

SELECT * FROM books
ORDER BY year_of_publication;

SELECT books.title, authors.name
FROM books
JOIN authors
ON books.author_id = authors.id;
