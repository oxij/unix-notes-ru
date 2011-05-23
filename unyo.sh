#!/bin/bash
# Generates version of sources without letter ``yo''

rm -rf unyoed
mkdir unyoed || exit 1

cp Makefile main.tex intro.tex unyoed
for a in part-*.tex; do
    cat "$a" | sed 's|ё|е|g' > unyoed/"$a"
done

cp VERSION unyoed
echo "без буквы <<ё>>" >> unyoed/VERSION
