CREATE TABLE IF NOT EXISTS authors(
	id SERIAL PRIMARY KEY,
	name VARCHAR(50),
	nationality VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS books(
	id SERIAL PRIMARY KEY,
	title VARCHAR(200),
	year_of_publication INTEGER,
	author_id INTEGER REFERENCES authors(id)
)
