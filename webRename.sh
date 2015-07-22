!#/bin/bash
#for f in *; do mv "$f" "`echo $f | tr "[:upper:]" "[:lower:]"`"; done;for i in *\ *; do if [ -f "$i" ]; then mv "$i" ${i// /_}; fi; done;
for SRC in `find my_root_dir -depth`
do
    DST=`dirname "${SRC}"`/`basename "${SRC}" | tr '[A-Z]' '[a-z]'`
    if [ "${SRC}" != "${DST}" ]
    then
        [ ! -e "${DST}" ] && mv -T "${SRC}" "${DST}" || echo "${SRC} was not renamed"
    fi
done
