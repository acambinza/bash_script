#! /bin/bash

COLORS="red green blue"

for COLOR in $COLORS
do
    echo "COLOR: $COLOR"
done


PICTURES=$(ls img/*jpg)
DATE=$(date +%F)

for PICTURE in $PICTURES
do
  echo "Renaming ${PICTURE} to ${DATE} -${PICTURE}"
   mv ${PICTURE} ${DATE}-${PICTURE}
done
