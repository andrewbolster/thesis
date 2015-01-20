# thesis
PhD Thesis Progress, based on the University of Liverpools Thesis template, found [here](http://cgi.csc.liv.ac.uk/~antony/thesis.html)

# Apt Requirements
* texlive
* texlive-math-extra
* texlive-latex-extra
* texlive-science
* latexmk

# Pre commit Notes
Includes a pre-commit hook that moves Thesis.pdf to Thesis-Last.pdf, builds Thesis.tex using latexmk and **if that build is successful** allows the commit to continue. 

This behaviour can be overridden with the `--no-verify` flag.

# Branch Strategy 

It is strongly encouraged that branching is used. General workflow as follows:

Establish a new feature branch:

`$ git checkout -b branch-name`

Do your stuff in that branch and later merge with the master

`$ git checkout master`

`$ git merge branch-name`

Finally Delete the Branch 

`$ git branch -d branch-name`

