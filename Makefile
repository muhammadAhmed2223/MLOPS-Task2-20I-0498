# make file for python

install:
	python -r requirements.txt

tests:
	pytest test.py

run:
	python main.py
