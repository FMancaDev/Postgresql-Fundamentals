UPDATE books
SET year_of_publication = 1949
WHERE title = 'Penguin Essentials';

DELETE FROM books
WHERE author_id = (SELECT id FROM authors WHERE name = 'Fernando Pessoa');

DELETE FROM authors
WHERE name = 'Fernando Pessoa';
