#!usr/bin/env bash
# File: makefile

NOW=$(date)
nr_lines=$(cat guessinggame.sh | wc-l)

README.md:
	echo "# Peer graded assignment:" > README.md

	echo "The time and date when this file was made: $(NOW)" >> README.md

	echo "number of lines of code in the guessinggame.sh are: $(nr_lines)" >> README.md

	echo "To view the website, click on this [link] (https://stigpaulsberg.github.io/peer-graded-assignment/ "website")"

website:
	echo "theme: jekyll-theme-cayman" > _config.yml
	echo "title: This is the website!" >> _config.yml
	echo "description: Not much else to say!" >> _config.yml


delete:
	rm -r -f README.md
	rm -r -f _config.yml
