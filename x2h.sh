#! /bin/sh
for i in *.txt; do txt2html $i | tidy -q -asxml > ${i%.txt}.xml; done

if [ ! -d "$DIR" ]; then # script statements if $DIR doesn't exist.
mkdir $output 
if [ -d "$DIR" ]; then
  # Script statements if $DIR exists.
mv *.txt $output
fi
