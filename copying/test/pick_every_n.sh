#!/bin/bash

if [ -z "$1" ]
  then
    echo 
    echo "Argument is missing!!!"
    echo 
    echo "Expected usage:"
    echo ">>>> ./pick_every_n.sh 10 <<<< " 
    echo "will pick every 10-th file "
    echo "in the currect directory"
    echo "WARNING: cleans 'selected' folder on each run"
    exit
fi
every_n=$1

files=`ls -1 | sort -n`
counter=0

DIRECTORY="selected/"
if [ -d "$DIRECTORY" ]; then
    rm -rf $DIRECTORY
    echo "The folder '$DIRECTORY' has been cleaned"
fi
mkdir $DIRECTORY

echo "Starting copying"
for file in $files; do
    if [[ $(( $counter % $every_n )) -eq 0 ]]; then
        cp $file $DIRECTORY
        printf "."
    fi
    counter=$(($counter + 1))
done
echo
echo "Files copied successfully"