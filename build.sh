#!/bin/bash
# Generates version of sources without letter ``yo''
# Compiles everything

rm -rf unyoed
make clean

mkdir unyoed || exit 1

cp Makefile main.tex intro.tex unyoed
for a in part-*.tex; do
    cat "$a" | sed 's|ё|е|g' > unyoed/"$a"
done

cp VERSION unyoed
echo "без буквы <<ё>>" >> unyoed/VERSION

make && ( cd unyoed; make; )
cp main.pdf compiled/main.pdf
cp unyoed/main.pdf compiled/main-unyoed.pdf
