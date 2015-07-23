#!/bin/bash
for f in *; do mv "$f" "`echo $f | tr "[:upper:]" "[:lower:]"`";
  done;
for i in *\ *; do if [ -f "$i" ]; then mv "$i" ${i// /_}; fi;
  done;
