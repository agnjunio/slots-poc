.PHONY: run

VENV = venv
PYTHON = $(VENV)/bin/python3
PY_HOT_RELOAD = $(VENV)/bin/py-hot-reload
PIP = $(VENV)/bin/pip

SRC = src

$(VENV)/bin/activate:
	python3 -m venv $(VENV)

install: $(VENV)/bin/activate requirements.txt
	$(PIP) install -r requirements.txt

run: $(VENV)/bin/activate
	$(PYTHON) $(SRC)/main.py

dev: $(VENV)/bin/activate
	$(PY_HOT_RELOAD) $(SRC)/main.py

clean:
	rm -rf __pycache__
	rm -rf venv
