count=$(pwd | ls -1 | wc -l)

function guessingame {
    if [[ $1 -lt $2 ]]
    then
        echo "Too low!"
    elif [[ $1 -gt $2 ]]
    then
        echo "Too high!"
    else
        echo ""
        echo "Congratualations!"
    fi
}

while [[ $count -ne $guess ]]
do
    read -p "How many files are in the current directory? " guess
    echo $(guessingame  $guess $count)
    echo ""
done
