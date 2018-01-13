#!/usr/bin/env bash
# File: guessinggame.sh

nr_files=$(ls | wc -l)

echo "Greetings. How many files does this directory contain? I only accept digits."

while [[ $response -ne $nr_files ]]
do
	read response

	if [[ $response -gt $nr_files ]]
	then
		echo "That is too high. Please guess another number."
	fi

	if [[ $response -lt $nr_files ]]
	then
		echo "That is too low. Try again, mate!"
	fi
done

echo "Yep that's right."
echo "Number of files in this directory is $nr_files."
