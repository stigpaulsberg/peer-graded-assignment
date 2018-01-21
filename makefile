#!usr/bin/env bash
# File: makefile

logfile=$(shell date +"%Y.%m.%d %H:%M:%S")
nr_lines:=$(cat guessinggame.sh | wc -l)

all: README.md website

README.md:
	echo "# Peer graded assignment:" > README.md
	echo "---" >> README.md
	echo "The time and date when this file was made: ${logfile}" >> README.md
	echo "---" >> README.md
	echo "number of lines of code in the guessinggame.sh are: ${nr_lines}" >> README.md
	echo "---" >> README.md
	echo "To view the website, click here: https://stigpaulsberg.github.io/peer-graded-assignment/" >> README.md

website:
	echo "theme: jekyll-theme-cayman" > _config.yml
	echo "title: This is the website!" >> _config.yml
	echo "description: Not much else to say!" >> _config.yml


delete:
	rm -r -f README.md
	rm -r -f _config.yml
