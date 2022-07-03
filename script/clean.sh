#!/usr/bin/env bash

for extname in aux bbl bcf blg cb cb2 fdb_latexmk fls fmt fot lb lof log lot nav out pre snm synctex synctex.gz toc vrb xdv; do
    for i in $(find . -name "*.$extname"); do
        rm -f $i
    done
done