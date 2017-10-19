This directory contains materials that can help with preparing theses at
Dalhousie University, using latex. It is provided "as is" by a professor who is
trying to help his students. It is not an official product of the university,
and its results are not claimed to meet the formatting requirements.  

See http://dankelley.github.io/dal-oce-thesis/index.html for documentation.

If you want to use the ocethesis package like any regular LaTeX package without
copying the provided style sheets into the directory of your document, you may
install the package in a root path of your TeX distribution. This path varies
with operating system:

Linux:
------

Open a terminal and type::

$ kpsewhich -var-value=TEXMFHOME

to find the root path of your TeX distribution. Typically, this is
``/home/<username>/texmf`` where ``<username>`` is the name of your user account on your computer. It is
possible that this directory (and necessary subdirectories) does not exist. In
this case use the terminal and create the following subdirectories::

$ mkdir -p ~/texmf/tex/latex
$ mkdir -p ~/texmf/bibtex/bst

The first path is where LaTeX packages are stored, whereas the latter is for
bibliography style sheets.

Now you clone the dal-oce-thesis repository. In the terminal, type::

$ git clone https://github.com/dankelley/dal-oce-thesis.git ~/texmf/tex/latex/ocethesis

This creates a copy of the package on your computer. Now change into the
directory for bibliography style sheets and create a link to ``ocethesis.bst``::

$ cd ~/texmf/bibtex/bst
$ ln -s ../../tex/latex/ocethesis/ocethesis.bst .

You can test if your TeX distribution is able to find the class file and style
sheets by typing in the terminal::

$ kpsewhich ocethesis.cls
$ kpsewhich ocethesis.bst

Both commands should give you the full path to the respective files.
