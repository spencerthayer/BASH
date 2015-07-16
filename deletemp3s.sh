#!/bin/bash
# Loop through unrelated files (*.txt, directories, etc)
echo "THE FUN KILLER!"
for f in ~/*; do
    f="${f%.*}"
    if [[ -f ${f}.mp3 ]]; then
        rm -f "${f}.mp3" && echo >&2 "${f}.mp3 deleted"
    fi
done
