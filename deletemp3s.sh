#!/bin/bash
# Loop through unrelated files (*.txt, directories, etc)
for f in ~/*; do
    f="${f%.*}"
    if [[ -f ${f}.mp3 ]]; then
        rm -f "${f}.mp3" && echo >&2 "${f}.mp3 deleted"
    fi
done
#find ~/ -type f -regextype posix-extended -iregex '.*\.(avi|mkv|wmv|mp4|mp5|flv|M4V|mpeg|mov|m1v|m2v|3gp|avchd)$' -delete
#
#for ext in avi mkv wmv mp4 mp5 flv M4V mpeg mov m1v m2v 3gp avchd; do
#  rm -f ~/*.$ext;
#done
