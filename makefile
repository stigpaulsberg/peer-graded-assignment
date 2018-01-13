#!usr/bin/env bash
# File: makefile

NOW=$(date)
nr_lines=$(cat guessinggame.sh | wc-l)

README.md:
	echo "# Peer graded assignment:" > README.md

	echo "The time and date when this file was made: $(NOW)" >> README.md

	echo "number of lines of code in the guessinggame.sh are: $(nr_lines)" >> README.md

delete:
	rm -r -f README.md

