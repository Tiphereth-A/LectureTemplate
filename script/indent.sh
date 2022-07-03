#!/usr/bin/env bash

for i in $(find . -name "*.tex"); do
    latexindent $i -o $i
done
