#!/bin/bash
if [[ -f "Thesis.pdf" ]]; then
  mv Thesis.pdf Thesis-Last.pdf
else
  echo "Thesis.pdf does not exist in `pwd`"
fi
latexmk Thesis.tex
tex_exit="$?"
latexmk -c
if [[ "$tex_exit" -gt "0" ]]; then
  echo "Exiting with status $tex_exit"
  exit $tex_exit 
fi
git add ./Thesis.pdf ./Thesis-Last.pdf
