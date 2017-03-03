#!/bin/zsh

i=1
while [[ true ]]
do
    if [[ $@[$i] != "--end_status_string" ]]
    then
        echo -n "$@[$i] "
        ((i++))
    else
        echo -n "\b"
        break
    fi
done

echo "$(python2 py2/progress-parse.py $@ $COLUMNS)"
