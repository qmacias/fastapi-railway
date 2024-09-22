PIP = pip
PYTHON = python

.PHONY: build
build: init install

.PHONY: init
init:
	$(PYTHON) -m venv .venv

.PHONY: install
install:
	$(PIP) install --no-cache-dir -r requirements.txt