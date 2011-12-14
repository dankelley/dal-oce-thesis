========================================
LaTeX style file for Oceanography theses
========================================

**Dan Kelley**

**2007-05-23, 2009-03-19, 2010-05-26, 2011-12-14**

Background
----------

Dalhousie's Faculty of Graduate Studies (FGS) places some fairly stringent
demands on the formatting of theses.  Students who use GUI-based document
preparation systems should be able to meet the demands without great
intellectual effort.  Unfortunately, this is not the case for students who use
LaTeX, which is not designed to let writers manipulate formats easily.  This
poses a problem, because switching from LaTeX to a GUI-based system is not a
sensible option for students whose theses contain significant mathematical
notation.

To ease the burden, Dalhousie students and faculty members (working without
help or support from FGS) have developed a set of LaTeX style sheets. The
present website provides one of these, ``ocethesis.cls``, which is based
closely on the Department of Computer Science ``dalcsthesis.cls`` style file.
(The latter is so well described at
[http://users.cs.dal.ca/~vlado/dalcsthesis/](http://users.cs.dal.ca/~vlado/dalcsthesis/)
that any sensible reader of the present document will follow the link.)

Contents of this directory 
--------------------------

This directory contains the Dalhousie Oceanography thesis LaTex style
(``ocethesis.cls``), two bibliography style files (``ocethesis.bst``
and ``ocethesisbib.sty``), a sample LaTeX file (``mythesis.tex``), and
a sample bibliography file (``literature.bib``).

It seems that the style sheet satisfies the FGS rules most of the time.
However, these rules are very much a moving target, so it seems certain that
further changes to the style files will be required at some point. The whole
purpose of this website is to facilitate this development.  The reader is
cautioned, however, that changing LaTeX style sheets is *not* for the faint of
heart.

Using the style file
--------------------

Your first step should be to try to run the sample file named
``mythesis.tex`` on your machine. (If you don't know how to run a
LaTeX file, you'll need to learn that from another source. Luckily,
LaTeX is the *lingua franca* of mathematically-inclined technical
writing, so many resources are available.)

Note that this sample file uses a figure, in the file
``figure1.pdf``. You'll need to find out how to work with whatever
type of figures your software creates. Do that and test it with this
sample file, before going on. This will be the biggest decision you'll
have to make. The simplest scheme would be to chat with another
student who uses similar software to make figures.

Once you've got it working with figures, you should start changing
some of the blocks in which definitions are given for the thesis
title, etc. Then it will be time to start adding lines to include your
various chapters and appendices. At that stage -- which should be
within an hour of your first experiment -- you'll be working on your
thesis, and you won't have to think about the format again!

Notes
-----

1. The margins are 0.05 inches wider than the width specified by the
   Faculty of Graduate Studies.  This is to avoid problems that arise
   by slight displacements in different printers.

Known errors in this version
----------------------------

1. Cross-references to appendices, such as in the first line of the
   *Hello* section of ``mythesis.tex``, fail on my (OS X system), but
   seem to work on PC systems.

2. As of March 2009, FGS requested that entries in the table of contents be in
   an upper-case font.  However, they relaxed this requirement after I
   explained that I had worked for a morning trying to do this, with no luck,
   and that our department had submitted dozens of theses in the format
   provided by this package.  In 2011, they started demanding this again.
   Whether the present-day style sheet produces acceptable results is very much
   an open question, for the reason that *everything* relating to thesis
   formatting at Dalhousie is an open question.  Not only do FGS staff make
   different suggestions to different students, but the FGS website contains
   documents that contradict each other.  The optimist sees a future in which
   FGS imposes only reasonable demands on formatting.  This is the right thing
   to do, and it will increase alumni donations.

