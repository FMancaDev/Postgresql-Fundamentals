UPDATE books
SET year_of_publication = 1949
WHERE title = 'Penguin Essentials';

DELETE FROM books;

DELETE FROM authors
WHERE name = 'Fernando Pessoa';
