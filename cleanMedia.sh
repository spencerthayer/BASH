#!/bin/bash
find ~/ -type f -regextype posix-extended -iregex '.*\.(wav|wave|mp2|mp3|mp4|mp4a|mp5|m4p|m4b|mpga|3ga|3gp|flac|cda|rec|ra|ram|rmx|rmj|rmm|m4a|m4v|wma|wmv|au|aiff|ogg|oga|midi|d00|avi|mkv|wmv|flv|M4V|mpeg|mov|m1v|m2v|avchd)$' -delete
done
