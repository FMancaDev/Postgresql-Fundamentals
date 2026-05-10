INSERT INTO authors (name, nationality)
VALUES
('José Saramago', 'Português'),
('George Orwell', 'Inglês'),
('Fernando Pessoa', 'Português');

INSERT INTO books(title, year_of_publication, author_id)
VALUES (
	'Ensaio sobre a Lucidez',
	2004,
	(SELECT id FROM authors WHERE name = 'José Saramago')
);


INSERT INTO books(title, year_of_publication, author_id)
VALUES (
	'Penguin Essentials',
	1984,
	(SELECT id FROM authors WHERE name = 'George Orwell')
);

INSERT INTO books(title, year_of_publication, author_id)
VALUES (
	'Tenho Medo de Partir',
	2018,
	(SELECT id FROM authors WHERE name = 'Fernando Pessoa')
)

--- o select serve para corresponder o author_id ao id do autor---
