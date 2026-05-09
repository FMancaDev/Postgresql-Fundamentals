VENV = venv
PYTHON = $(VENV)/bin/python
PIP = $(VENV)/bin/pip

all: install

$(VENV):
	python3 -m venv venv

install: $(VENV)
	$(PIP) install --upgrade pip
	$(PIP) install psycopg2-binary python-dotenv

clean:
	rm -rf $(VENV)
