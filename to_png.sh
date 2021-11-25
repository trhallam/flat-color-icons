#!/bin/bash

for file in "$@"
do
    echo "Converting ${file}"
    output="$(basename -s .svg ${file})".png
    echo "Output png/${output}"
    inkscape $file -w 128 -e "png/${output}"
done
