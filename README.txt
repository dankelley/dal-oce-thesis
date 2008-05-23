# LaTeX style file for Oceanography theses
**Dan Kelley <Dan.Kelley@Dal.Ca>**

**2007-05-23**

## Background

Dalhousie's Faculty of Graduate Studies (FGS) places some fairly
stringent demands on the formatting of theses, but they provide little
in the way of help in meeting these demands.  Students who use
GUI-based document preparation systems will find the rules to be
annoying, but easy to obey. That's not the case for students writing
more mathematical or technical theses, who tend to use LaTeX.

To ease the burden, students and faculty at Dalhousie have developed a
set of LaTeX style sheets. These have been in continual development
for a couple of decades, so they have passed through many hands.

The present version of **ocethesis.cls** is based very closely on the
Department of Computer Science **dalcsthesis.cls** style file, which
is so well described at
[http://users.cs.dal.ca/~vlado/dalcsthesis/](http://users.cs.dal.ca/~vlado/dalcsthesis/)
that any sensible reader of the present document will follow the link.

## Contents of this directory 

This directory contains the Dalhousie Oceanography thesis LaTex style
(**ocethesis.cls**), two bibliography style files (**ocethesis.bst**
and **ocethesisbib.sty**), a sample LaTeX file (**mythesis.tex**), and
a sample bibliography file (**literature.bib**).

It seems that the style sheet satisfies the FGS rules as of early
2007. However, these rules are a moving target, so it seems certain
that further changes to the style files will be required at some
point. These changes are *not* for the faint of heart. In an ideal
world, FGS would help with this sort of thing. We don't live in that
world, though.

## Using the style file

Your first step should be to try to run the sample file named
**mythesis.tex** on your machine. (If you don't know how to run a
LaTeX file, you'll need to learn that from another source. Luckily,
LaTeX is the *lingua franca* of mathematically-inclined technical
writing, so many resources are available.)

Note that this sample file uses a figure, in the file **figure1.pdf**. You'll need to find
out how to work with whatever type of figures your software creates. Do that and test it with
this sample file, before going on. This will be the biggest decision you'll have to make. The
simplest scheme would be to chat with another student who uses similar software to make
figures.

Once you've got it working with figures, you should start changing
some of the blocks in which definitions are given for the thesis
title, etc. Then it will be time to start adding lines to include your
various chapters and appendices. At that stage -- which should be
within an hour of your first experiment -- you'll be working on your
thesis, and you won't have to think about the format again!

## Notes

1. The margins are 0.05 inches wider than the width specified by the
Faculty of Graduate Studies.  This is to avoid problems that arise by
slight displacements in different printers.

## Known errors in this version

1. Cross-references to appendices, such as in the first line of the
*Hello* section of **mythesis.tex**, fail on my (OS X system), but
seem to work on PC systems.

