#!/bin/bash
#
find ~/ -type f -regextype posix-extended -iregex '.*\.(wav|wave|mp2|mp3|mp4|mp4a|m4p|m4b|m4a|m4v|mp5|mpga|3ga|3gp|flac|cda|rec|ra|ram|rmx|rmj|rmm|wma|wmv|au|aiff|ogg|oga|midi|d00|avi|mkv|flv|mpeg|mov|m1v|m2v|avchd)$' -delete
done
