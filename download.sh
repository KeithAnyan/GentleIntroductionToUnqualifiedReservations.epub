#!/bin/bash

# mkdir
mkdir -p OEBPS/Text originals

# download
COUNTER=1
while read p; do
	name=$(basename $p)
	name=$(echo $name | sed s/\.html/-p$COUNTER.html/g)
	COUNTER=$((COUNTER+1))
	orig=originals/$name
	targ=OEBPS/Text/$name
	curl $p > $orig
	php utils/blogger.php $orig > $targ
done <urls

