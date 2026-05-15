# PostgreSQL Fundamentals

A hands-on project to learn the core concepts of PostgreSQL — from creating tables and inserting data to writing complex queries and managing relational integrity.

Built as a stepping stone before integrating PostgreSQL into a real FastAPI project.

---

## What I learned

- Creating tables with `PRIMARY KEY`, `FOREIGN KEY`, and `UNIQUE` constraints
- Inserting data with duplicate protection using `ON CONFLICT DO NOTHING`
- Querying data with `SELECT`, `WHERE`, `ORDER BY`, and `JOIN`
- Aggregating data with `COUNT`, `MIN`, `MAX`, and `GROUP BY`
- Updating and deleting records while respecting foreign key constraints
- Connecting Python to a cloud PostgreSQL database using `psycopg2`

---

## Tech stack

- PostgreSQL (hosted on Supabase)
- Python 3
- psycopg2-binary
- python-dotenv

---

## Project structure

```
Postgresql-Fundamentals/
├── sql/
│   ├── 01_create_tables.sql
│   ├── 02_insert_data.sql
│   ├── 03_queries.sql
│   ├── 04_aggregations.sql
│   └── 05_update_delete.sql
├── run_sql.py
├── Makefile
├── .env
├── .gitignore
└── README.md
```

---

## SQL files

| File | Description |
|------|-------------|
| `01_create_tables.sql` | Creates the `authors` and `books` tables with a foreign key relation |
| `02_insert_data.sql` | Inserts sample data with duplicate protection |
| `03_queries.sql` | SELECT, WHERE, ORDER BY, JOIN examples |
| `04_aggregations.sql` | COUNT, MIN, MAX, GROUP BY examples |
| `05_update_delete.sql` | UPDATE and DELETE with foreign key handling |

---

## Getting started

### 1. Clone the repo

```bash
git clone https://github.com/FMancaDev/Postgresql-Fundamentals.git
cd Postgresql-Fundamentals
```

### 2. Install dependencies

```bash
make
```

### 3. Set up your environment

Create a `.env` file in the root of the project:

```
DATABASE_URL=postgresql://postgres:[YOUR-PASSWORD]@your-supabase-host:6543/postgres
```

You can get your connection string from [Supabase](https://supabase.com) under **Connect → Session pooler**.

### 4. Run the project

```bash
python3 run_sql.py
```

---

## Author

Made by [FMancaDev](https://github.com/FMancaDev)
