find . -type f -name "* conflicted copy*" -exec rm -f {} \;
awk '!/conflicted/' .git/packed-refs > temp && mv temp .git/packed-refs