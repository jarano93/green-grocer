#!/bin/zsh

readonly DIR=$(dirname $0)
readonly PY="$DIR/../py2"

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

echo "$(python2 $PY/progress-parse.py $@ $COLUMNS)"
