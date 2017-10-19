## Overview

This directory contains materials that can help with preparing theses at
Dalhousie University, using latex. It is provided "as is" by a professor who is
trying to help his students. It is not an official product of the university,
and its results are not claimed to meet the formatting requirements.  

See http://dankelley.github.io/dal-oce-thesis/index.html for documentation.

## Installation

If you want to use the ocethesis package like any regular LaTeX package without
copying the provided style sheets into the directory of your document, you may
install the package in a root path of your TeX distribution. The procedure
depends on the operating system, and so some steps listed below are divided
into Linux and MacOS (formerly OSX) variants; a procedure on Windows may be
added if a user explains it to the developers.

### Step 1: set up directories

Open a terminal and type
```
kpsewhich -var-value=TEXMFHOME
```

to find the root path of your TeX distribution. On linux and unix-like systems,
this is typically `/home/<username>/texmf`, where `<username>` is the name of
your user account on your computer. On MacOS (or the previous OSX) this will be
`/Users/<username>/Library/texmf`.  It is possible that this directory (and
necessary subdirectories) does not exist. In this case use the terminal and
create the requisite subdirectories, with
```
mkdir -p ~/texmf/tex/latex
mkdir -p ~/texmf/bibtex/bst
```
on Linux or
```
mkdir -p ~/Library/texmf/tex/latex
mkdir -p ~/Library/texmf/bibtex/bst
```
on MacOS.


### Step 2: clone the Dalhousie thesis repository

At this stage, you are set up for doing work with Latex, and you will not need
to repeat these steps for any later updates to the Dalhousie thesis style sheet.

The next step is to clone the dal-oce-thesis repository. In the terminal, type
```
cd ~/texmf/tex/latex
git clone https://github.com/dankelley/dal-oce-thesis.git ocethesis
```
on Linux, or 
```
cd ~/Library/texmf/tex/latex
git clone https://github.com/dankelley/dal-oce-thesis.git ocethesis
```
on MacOS.

Finally, set up the bibliography style sheet, with
```
cd ~/texmf/bibtex/bst
ln -s ../../tex/latex/ocethesis/ocethesis.bst .
```
on Linux or
```
cd ~/Library/texmf/bibtex/bst
ln -s ../../tex/latex/ocethesis/ocethesis.bst .
```
on MacOS.


### Step 3. testing the setup

You can test if your TeX distribution is able to find the class file and style
sheets by typing in the terminal:
```
kpsewhich ocethesis.cls
kpsewhich ocethesis.bst
```
and verifying that both commands report the full path to the respective files,
as you've set them up.

## Updating the installation

If `dal-oce-thesis` gets updated, you may update your installation by doing
```
cd ~/texmf/tex/latex/ocethesis
```
on Linux or
```
cd ~/Library/texmf/tex/latex/ocethesis
```
on MacOS, and then typing
```
git pull
```


