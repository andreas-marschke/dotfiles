#!/bin/bash

# Bootstrap dotfiles into my Home dir:
# ./bootstrap.sh /path/to/dotfiles

dir=$1

if [ ! -d $dir ]; then
	echo "ERROR: Directory not found!"
	exit 1
fi

for i in $(ls $dir | grep -v '^doc$' )
do 
    if [ -x ~/.$i ]
    then
        rm ~/.$i
    fi
    ln -s $dir/$i ~/.$i
done


