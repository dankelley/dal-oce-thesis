<?php $version="0.3";?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head><title>LaTeX style file for Oceanography theses</title>
<link rel="stylesheet" href="style.css" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
</head>
<body>
<h1>LaTeX style file for Oceanography theses</h1>
<p><i>Dan Kelley 2007-04-18</i></p>

<h1>Background</h1> 

<p> Dalhousie's Faculty of Graduate Studies (FGS) places some fairly stringent demands on the formatting of
theses, but they provide little in the way of help in meeting these demands. Students who use GUI-based
document preparation systems will find the rules to be annoying, but easy to obey. That's not the case for
students writing more mathematical or technical theses, who tend to use LaTeX. </p>

<p>To ease the burden, students and faculty at Dalhousie have developed a set of LaTeX style sheets. These
have been in continual development for a couple of decades, so they have passed through many hands. </p>

<p> The present version of <span class="filename">ocethesis.cls</span> is based very closely on the
Department of Computer Science <span class="filename">dalcsthesis.cls</span> style file, which is so well
described at <a
href="http://users.cs.dal.ca/~vlado/dalcsthesis/">http://users.cs.dal.ca/~vlado/dalcsthesis/</a> that any
sensible reader of the present document will follow the link. </p>

<h1>Instructions for using the style sheet</h1>

<p>First, download <a href="ocethesis_<?php echo $version;?>.zip">ocethesis_<?php echo $version;?>.zip</a> and unzip
it. Enter the directory that is thus created. There, you'll see an example thesis file <span
class="filename">mythesis.tex</span> (which uses separate files for chapter 1, etc.). You should be able to run LaTeX
on this file. If not, there's a problem that you'll have to solve before proceeding any further. Once latex runs, you
should run bibtex, to link the citations. Then run latex two more times, to resolve the cross-links. The result
should be a nicely formatted thesis, but one with some pretty odd content. The title will be <i>(Insert title
here)</i>, and so on. This is placeholder text, chosen so that you can easily locate it in the <span
class="filename">mythesis.tex<//span> file.</span>

<p>The second step is to start modifying the placeholder text in <span class="filename">mythesis.tex</span> (or,
better, a copy of this file), and to start changing the placeholder text. Also, start adding your references to the
bibliography file, <span class="filename">literature.bib</span>.</p>

<p>Note that this sample file uses a figure, in the file <span class="filename">figure1.pdf</span>. You'll need to
find out how to work with whatever type of figures your software creates. Do that and test it with this sample file,
before going much further, since you'll be able to save a lot of time by deciding on figure format from the start.
It's a good idea chat with another student who uses similar software to make figures.</p>

<p>In ten minutes, you should be well on your way. It's a good idea to put chapter content in separate files,
as in the example, so that you can comment out chapters you're not actively working on. There are loads of
other tricks, too -- consult with other latex users. The good thing is that you <i>should</i> not have to
worry about formatting.</p>

<h1>Known errors in this version</h1>

<ul> <li> Something is wrong with appendices. Cross-referencing seems not to work, and the appendices are
not automatically entered into the table of contents. See the example file <span
class="filename">mythesis.tex</span> for a workaround for the table of contents. Unfortunately, there is
not yet a solution for cross-referencing; you'll have to write e.g. <tt>(see appendix A)</tt> instead of
<tt>(see appendix~\ref{appendix-name})</tt> </ul>

<h1>Changes from previous versions</h1>

<ul>
<li>Version <span class="filename">0.3</span> is as <span class="filename">0.2</span> except that the margin
spacing is more correct. (A unix diff patch to <span class="filename">dalcsthesis.cls</span> is <a
href="patch-to-0.3">here</a>.)

<li>Version <span class="filename">0.2</span> is as <span class="filename">0.1</span> except that the
chapter and section headings are modified.

<li>Version <span class="filename">0.1</span> is as <span class="filename">dalcsthesis.cls</span> except
that (a) the page height is adjusted to make the margin below the page number be 1/2 inch, (b) upper/lower
case is used in titles, (c) line breaks are changed in some boilerplate text (e.g. "Submitted in partial
fulfillment")
</ul>

</body>
</html>
