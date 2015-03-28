========================================
LaTeX style file for Oceanography theses
========================================

**Dan Kelley** (department of oceanography) and many others, over many years.

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

To ease the burden, Dalhousie students and faculty members have developed a set
of LaTeX style sheets. The present website provides one of these,
``ocethesis.cls``, which is based closely on the Department of Computer Science
``dalcsthesis.cls`` style file.  (The latter is so well described at
[http://users.cs.dal.ca/~vlado/dalcsthesis/](http://users.cs.dal.ca/~vlado/dalcsthesis/)
that any sensible reader of the present document will follow the link.)

The ``ocethesis.cls`` style sheet may also be used to prepare a BSc thesis, as
exemplified in the ``mythesis-honours-coop.tex`` file provided here.


Contents of this directory 
--------------------------

This directory contains the Dalhousie Oceanography thesis LaTex style
(``ocethesis.cls``), two bibliography style files (``ocethesis.bst`` and
``ocethesisbib.sty``), a sample LaTeX file for postgraduate work
(``mythesis.tex``), a sample LaTeX file for undergraduate work
(``mythesis-honours-coop.tex``), and a sample bibliography file
(``literature.bib``).

It seems that the style sheet satisfies the FGS rules most of the time.
However, these rules are a moving target, so it seems likely that further
changes to the style files will be required at some point. The whole purpose of
this website is to facilitate this development.  The reader is cautioned,
however, that changing LaTeX style sheets is *not* for the faint of heart.

Using the style file
--------------------

Your first step should be to try to run the sample file named ``mythesis.tex``
on your machine. (If you don't know how to run a LaTeX file, you'll need to
learn that from another source. Luckily, LaTeX is the *lingua franca* of
mathematically-inclined technical writing, so many resources are available.)

Note that this sample file uses a figure, in the file ``figure1.pdf``. You'll
need to find out how to work with whatever type of figures your software
creates. Do that and test it with this sample file, before going on. This will
be the biggest decision you'll have to make. The simplest scheme would be to
chat with another student who uses similar software to make figures.

Once you've got it working with figures, you should start changing some of the
blocks in which definitions are given for the thesis title, etc. Then it will
be time to start adding lines to include your various chapters and appendices.
At that stage -- which should be within an hour of your first experiment --
you'll be working on your thesis, and you won't have to think about the format
again!

Notes
-----

1. The margins are 0.05 inches wider than the width specified by the Faculty of
   Graduate Studies.  This is to avoid problems that arise by slight
   displacements in different printers.

2. To get rotated captions and tables, put ``\usepackage{lscape}`` in the .tex
   file, and then put ``\begin{landscape}`` before content that is to go into
   landscape mode, and ``\end{landscape}`` to return to normal mode.  (Thanks
   to John Foster for this hint.)

3. To get degree symbols with less typesetting, put ``\usepackage{textcomp}``
   in your .tex file and then write e.g. ``10\textdegree{}`` instead of
   ``10$^\circ$``.  (Thanks to John Foster for this hint.)

4. The title of the bibliography may be changed by putting something like
   ``\renewcommand{\bibname}{References}`` in the beginning of the .tex file.
   (Thanks to John Foster for this hint.)

Known errors in this version
----------------------------

1. As of March 2009, FGS requested that entries in the table of contents be in
   a title-case font.  They relaxed this requirement for a while, but are
   enforcing it again in 2011.  There is no obvious latex solution to this,
   because it is tricky issue to decide which words are important, deserving of
   upper case, and which are less important; "on" could refer to a bird on a
   wire, or it could be the name of a person.  So, the solution lies with the
   thesis author: a heading as ``The Old Brown Cow`` instead of ``The old brown
   cow.``  The publishing industry is somewhat divided on whether title case is
   to be used in books, and perhaps one day FGS will recognize that and let
   authors decide.

2. It seems that every student who uses this style sheet gets new demands from
   FGS for aesthetic changes. Sometimes two students will use the style in a
   given month, with FGS regarding the results in one case as flawless and the
   other as erroneous. Whether to call the flaws "errors" is an open question.

Other resources
---------------

The Dalhousie Computing Science style sheet is available at
http://web.cs.dal.ca/~vlado/dalcsthesis/

History of recent changes
-------------------------

2015-03-28
..........

* Version 0.10 (I am going to try to remember to update this!)

* Fix month-old problem with page numbering [issue 26]; the now-unused
  signature page was still incrementing the roman-numeral page counter, so the
  Table of Contents was numbered 1 unit too high.

2015-02-02
..........

* version 0.9 (I have been forgetting to update this)
* Remove signature page.
* Move dedication to page ii.
* Remove (draft) date from top of page.


2012-07-10
..........

* Advise the use of title-case for section/chapter headings.

* Alter the aesthetics of chapter pages slightly (with lines above and below the chapter number).



2012-04-04
..........

* Increase font size for section headings
  
* Make chapter and section headings single-spaced.

* Use zero parindent on signature page.

2011-12-14
..........

* Fix an appendix problem.

