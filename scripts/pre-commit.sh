#!/bin/bash

cp `readlink -f Thesis.lnk.bib` Thesis.bib
git add ./Thesis.bib ./Thesis.lnk.bib

if [[ "$do_chaps" -gt "0" ]]; then
  cd Chapters
  latexmk -interaction=nonstopmode -pdf c?-*.tex
  git add ./c?-*.pdf
  git add ./c?-*.dep
  latexmk -c
  cd ../
fi

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

git commit --amend -a --no-verify
