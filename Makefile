# Makefile
SHELL := /bin/bash
.ONESHELL:


env_name := slenv
dependencies:
	@echo "Initializing Git..."
	git init
	@echo "Creating virtual environment..."
	python3 -m venv $(env_name)
env: dependencies
	@echo "Install dependencies..."
	source $(env_name)/bin/activate
	pip install -r requirements.txt
