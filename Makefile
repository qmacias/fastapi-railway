PIP := pip
PYTHON := python

.PHONY: build
build: venv deps

.PHONY: venv
venv:
	$(PYTHON) -m venv .venv

.PHONY: deps
deps:
	$(PIP) install --no-cache-dir -r requirements.txt