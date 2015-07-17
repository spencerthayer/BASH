#!/bin/bash
# OPTION 1
# for f in ~/*; do
#     f="${f%.*}"
#     if [[ -f ${f}.mp3 ]]; then
#         rm -f "${f}.mp3" && echo >&2 "${f}.mp3 deleted"
#     fi
# done
# OPTION 2
find ~/ -type f -regextype posix-extended -iregex '.*\.(wav|wave|mp2|mp3|mp4|mp4a|mp5|m4p|m4b|mpga|3ga|3gp|flac|cda|rec|ra|ram|rmx|rmj|rmm|m4a|m4v|wma|wmv|au|aiff|ogg|oga|midi|d00|avi|mkv|wmv|flv|M4V|mpeg|mov|m1v|m2v|avchd)$' -delete
# OPTION 3
# for ext in wav wave mp2 mp3 mp4 mp4a mp5 m4p m4b mpga 3ga 3gp flac cda rec ra ram rmx rmj rmm m4a m4v wma wmv au aiff ogg oga midi d00 avi mkv wmv flv M4V mpeg mov m1v m2v avchd; do
#  rm -f ~/*.$ext;
# done
