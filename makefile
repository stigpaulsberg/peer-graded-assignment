#!usr/bin/env bash
# File: makefile

logfile=$(shell date +"%Y.%m.%d %H:%M:%S")

all: README.md website

README.md:
	echo "# Peer graded assignment:" > README.md
	echo "---" >> README.md
	echo "The time and date when this file was made: ${logfile}" >> README.md
	echo "---" >> README.md
	echo "Number of lines of code in the guessinggame.sh are:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
	echo "---" >> README.md
	echo "To view the website, click here: https://stigpaulsberg.github.io/peer-graded-assignment/" >> README.md

website:
	echo "theme: jekyll-theme-cayman" > _config.yml
	echo "title: This is the website!" >> _config.yml
	echo "description: Not much else to say!" >> _config.yml

delete:
	rm -r -f README.md
	rm -r -f _config.yml
