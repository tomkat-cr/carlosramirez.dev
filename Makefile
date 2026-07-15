.PHONY: help server build start deploy clean

help:
	cat Makefile

run:
	cd website && php -S localhost:8000

build:
	@echo "No build required"

start:
	@echo "No start required"

deploy:
	@echo "No deploy required"

clean:
	@echo "No clean required"
