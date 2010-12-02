%%
%% This is file `dalthesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% dalthesis.dtx  (with options: `class')
%% dalthesis.ins  (installation file)
%% 
%% Dalhousie University Thesis Document Class
%% Version 2.2 <2003/12/12>
%% by Clyde Clements
%% Adapted from:
%%    LaTeX 2.09 `dalthesis.sty' file
%%    by Steven Matheson (1992)
%%    This was based on the Stanford University
%%    Ph.D. thesis style by Joseph Pallas (1988).
%% 
%% This is a LaTeX2e class file which is intended
%% to meet the requirements for theses produced at
%% Dalhousie University, Canada.
%% 
%% IMPORTANT NOTICE:
%% 
%% This is a generated file.
%% 
%% This file is free and may be distributed as long
%% as the original source files, as listed above,
%% are part of the same distribution. (The sources
%% need not necessarily be in the same archive or
%% directory.)
%% 
%% Any modified versions of this file must be renamed
%% with new filenames distinct from `dalthesis.cls'.
%% 
%% Please direct questions, comments, suggestions, etc.
%% to: clyde@mathstat.dal.ca
%% 
\def\fileversion{2.2}
\def\filedate{2003/12/12}
\def\docdate{2003/12/12}


\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{dalthesis}
   [\filedate\space v\fileversion\space
    Dalhousie University thesis class]
\newif\ifdal@title@page        \dal@title@pagetrue
\newif\ifdal@signature@page    \dal@signature@pagetrue
\newif\ifdal@first@signature   \dal@first@signaturetrue
\newif\ifdal@permission@page   \dal@permission@pagetrue
\newif\ifdal@contents@page     \dal@contents@pagetrue
\newif\ifdal@tables@page       \dal@tables@pagetrue
\newif\ifdal@figures@page      \dal@figures@pagetrue
\newif\ifdal@dedication@page   \dal@dedication@pagetrue
\newif\ifdal@dedication        \dal@dedicationfalse
\newif\ifdal@second@reader     \dal@second@readerfalse
\newif\ifdal@third@reader      \dal@third@readerfalse
\newif\ifdal@fourth@reader     \dal@fourth@readerfalse
\newif\ifdal@fifth@reader      \dal@fifth@readerfalse
\newif\ifdal@phd               \dal@phdfalse
\newif\ifdal@two@supervisors   \dal@two@supervisorsfalse
\newif\ifdal@draft@mode        \dal@draft@modefalse
\newif\ifdal@print@bib         \dal@print@bibtrue
\newif\ifdal@first@bibitem     \dal@first@bibitemtrue
\newif\ifdal@fac@engineering   \dal@fac@engineeringfalse
\newif\ifdal@in@preface        \dal@in@prefacefalse
\newcommand{\dal@ptsize}{12pt}
\DeclareOption{10pt}{\renewcommand{\dal@ptsize}{10pt}}
\DeclareOption{11pt}{\renewcommand{\dal@ptsize}{11pt}}
\DeclareOption{12pt}{} % \dal@ptsize already set to 12pt
\DeclareOption{draft}{\AtEndOfClass{\draft}
   \PassOptionsToClass{draft}{report}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions
\LoadClass[\dal@ptsize]{report}
\RequirePackage{afterpage}
\setlength{\headsep}{\baselineskip}
\setlength{\topmargin}{0pt}
\setlength{\oddsidemargin}{0.5in}
\setlength{\evensidemargin}{0in}
\setlength{\textwidth}{\paperwidth}
\addtolength{\textwidth}{-2.5in}
\newlength{\dal@textheight@default}
\setlength{\dal@textheight@default}{\paperheight}
\addtolength{\dal@textheight@default}{-2in}
\addtolength{\dal@textheight@default}{-\topmargin}
\addtolength{\dal@textheight@default}{-\headheight}
\addtolength{\dal@textheight@default}{-\headsep}
\newlength{\dal@textheight@footer}
\setlength{\dal@textheight@footer}{\dal@textheight@default}
\addtolength{\dal@textheight@footer}{-\footskip}
\setlength{\textheight}{\dal@textheight@default}
\newcommand{\dal@set@textheight}[1]{%
   \global\textheight=#1%
   \global\@colht=#1%
   \global\@colroom=#1%
   \global\vsize=#1%
   \@floatplacement%
}
\newcommand{\dal@add@textheight}[1]{%
   \global\advance\textheight by #1%
   \global\advance\@colht by #1%
   \global\advance\@colroom by #1%
   \global\advance\vsize by #1%
   \@floatplacement%
}
\renewcommand\chapter{%
   \if@openright\cleardoublepage\else\clearpage\fi
   \ifdal@in@preface\else\dal@add@textheight{-\footskip}\fi%
   \thispagestyle{plain}%
   \global\@topnum\z@
   \@afterindentfalse
   \secdef\dal@chapter\dal@schapter%
}
\def\dal@chapter[#1]#2{%
   \ifnum \c@secnumdepth >\m@ne
      \refstepcounter{chapter}%
      \typeout{\@chapapp\space\thechapter.}%
      \addcontentsline{toc}{chapter}%
         {\protect\numberline{\@chapapp\space\thechapter}#1}%
   \else
      \addcontentsline{toc}{chapter}{#1}%
   \fi
   \chaptermark{#1}%
   \addtocontents{lof}{\protect\addvspace{10\p@}}%
   \addtocontents{lot}{\protect\addvspace{10\p@}}%
   \if@twocolumn
      \@topnewpage[\@makechapterhead{#2}]%
   \else
      \@makechapterhead{#2}%
      \@afterheading
   \fi%
   \ifdal@in@preface\else\afterpage{\dal@add@textheight{\footskip}}\fi%
}
\def\dal@schapter#1{%
   \@schapter{#1}%
   \ifdal@in@preface\else\afterpage{\dal@add@textheight{\footskip}}\fi%
}
\newdimen\dal@tempdima
\newdimen\dal@tempdimb
\renewcommand*\l@chapter[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 1.0em \@plus\p@
    \settowidth\dal@tempdima{\chaptername\ }%
    \settowidth\dal@tempdimb{\appendixname\ }%
    \ifdim\dal@tempdima>\dal@tempdimb
       \setlength\@tempdima{\dal@tempdima}%
    \else
       \setlength\@tempdima{\dal@tempdimb}%
    \fi%
    \addtolength\@tempdima{2.5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode \bfseries
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      #1\nobreak\hfil \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
      \penalty\@highpenalty
    \endgroup
  \fi%
}
\flushbottom
\setlength{\marginparwidth}{40pt}
\setlength{\marginparsep}{10pt}
\newcommand{\properpagestyle}{%
   \pagestyle{myheadings}\markboth{}{}\markright{}}
\brokenpenalty=10000
\linespread{1.37}\normalsize
\renewenvironment{figure}
               {\linespread{1}\@float{figure}}
               {\end@float}
\renewenvironment{figure*}
               {\linespread{1}\@dblfloat{figure}}
               {\end@dblfloat}
\renewenvironment{table}
               {\linespread{1}\@float{table}}
               {\end@float}
\renewenvironment{table*}
               {\linespread{1}\@dblfloat{table}}
               {\end@dblfloat}
\def\@makechapterhead#1{%
  {\parindent \z@ \raggedright \normalfont
    \ifnum \c@secnumdepth >\m@ne
        \large\bfseries \@chapapp\space \thechapter
        \par\nobreak
        \vskip 0.8\baselineskip
    \fi
    \interlinepenalty\@M
    \large \bfseries #1\par\nobreak
    \vskip \baselineskip
  }}
\def\@makeschapterhead#1{%
  {\parindent \z@ \raggedright
    \normalfont
    \interlinepenalty\@M
    \large \bfseries #1\par\nobreak
    \vskip \baselineskip
  }}
\renewcommand\section{\@startsection {section}{1}{\z@}%
   {-3.5ex \@plus -1ex \@minus -.2ex}%
   {2.3ex \@plus.2ex}%
   {\normalfont\bfseries}}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
   {-3.25ex\@plus -1ex \@minus -.2ex}%
   {1.5ex \@plus .2ex}%
   {\normalfont\bfseries}}
\long\def\@caption#1[#2]#3{%
  \par
  \edef\test{\csname ext@#1\endcsname}%
  \def\@tempa{lof}%
  \def\@tempb{lot}%
  \ifx\test\@tempa%
     \addcontentsline{lof}{#1}%
       {\protect\numberline{\figurename\space\thefigure}%
        {\ignorespaces #2}}%
  \else\ifx\test\@tempb%
     \addcontentsline{lot}{#1}%
       {\protect\numberline{\tablename\space\thetable}%
        {\ignorespaces #2}}%
  \else%
     \addcontentsline{\csname ext@#1\endcsname}{#1}%
       {\protect\numberline{\csname the#1\endcsname}{\ignorespaces #2}}%
  \fi\fi%
  \begingroup
    \@parboxrestore
    \if@minipage
      \@setminipage
    \fi
    \normalsize
    \@makecaption{\csname fnum@#1\endcsname}{\ignorespaces #3}\par
  \endgroup}
\renewcommand*\l@figure{%
   \settowidth\@tempdima{\figurename\ }%
   \addtolength\@tempdima{2.3em}%
   \@dottedtocline{1}{1.5em}{\@tempdima}}
\renewcommand*\l@table{%
   \settowidth\@tempdima{\tablename\ }%
   \addtolength\@tempdima{2.3em}%
   \@dottedtocline{1}{1.5em}{\@tempdima}}
\long\def\@footnotetext#1{\insert\footins{%
    \linespread{1} % Set single-spacing
    \reset@font\footnotesize
    \interlinepenalty\interfootnotelinepenalty
    \splittopskip\footnotesep
    \splitmaxdepth \dp\strutbox \floatingpenalty \@MM
    \hsize\columnwidth \@parboxrestore
    \protected@edef\@currentlabel{%
       \csname p@footnote\endcsname\@thefnmark
    }%
    \color@begingroup
      \@makefntext{%
        \rule\z@\footnotesep\ignorespaces#1\@finalstrut\strutbox}
    \color@endgroup}%
   }
\long\def\@mpfootnotetext#1{%
  \global\setbox\@mpfootins\vbox{%
    \unvbox\@mpfootins
    \linespread{1} % Set single-spacing
    \reset@font\footnotesize
    \hsize\columnwidth
    \@parboxrestore
    \protected@edef\@currentlabel
         {\csname p@mpfootnote\endcsname\@thefnmark}%
    \color@begingroup
      \@makefntext{%
        \rule\z@\footnotesep\ignorespaces#1\@finalstrut\strutbox}%
    \color@endgroup}%
   }
\AtBeginDocument{%
\let\orig@thebibliography\thebibliography
\renewcommand{\thebibliography}[1]{%
   \clearpage   % necessary to get correct page number in toc
   \ifdal@print@bib
      \addcontentsline{toc}{chapter}{\bibname}
      \linespread{1}\normalsize
      \orig@thebibliography{#1}
   \else
      \newbox\dal@bib@box
      \newbox\dal@bibitem@box
      \let\b@group={
      \let\e@group=}
      \def\endthebibliography{\egroup\e@group}
      \let\orig@bibitem\bibitem
      \def\bibitem{%
         \ifdal@first@bibitem
            \dal@first@bibitemfalse
         \else
            \egroup
         \fi
         \setbox\dal@bibitem@box=\vbox\bgroup
         \orig@bibitem}
      \setbox\dal@bib@box=\vbox\b@group
      \if@filesw
         \immediate\write\@auxout{\string\@writefile{toc}%
            {\string\contentsline \space{chapter}{\bibname}{\thepage}}}
      \fi
      \orig@thebibliography{#1}
   \fi
   }
}
\def\university#1{\gdef\@university{#1}}
\def\address#1{\gdef\@address{#1}}
\def\dept#1{\gdef\@dept{#1}}
\def\faculty#1{\gdef\@faculty{#1}%
   \def\@tempa{#1}
   \def\@tempb{Engineering}
   \ifx\@tempa\@tempb
      \dal@fac@engineeringtrue
   \fi
}
\newcount\dal@supervisornum \dal@supervisornum=0
\def\supervisor#1{%
   \ifnum\dal@supervisornum=2
      \ClassWarningNoLine{dalthesis}%
         {Sorry, provisions have been made to allow only
          two supervisors}%
   \else
      \advance\dal@supervisornum by 1%
      \def\@tempa{\ifcase\the\dal@supervisornum\or\or co\fi}%
      \expandafter\gdef\csname @\@tempa supervisor\endcsname{#1}%
      \ifnum\dal@supervisornum=2
         \dal@two@supervisorstrue%
      \fi%
   \fi%
}
\def\superviser{\supervisor}
\newcounter{dal@readernum}
\setcounter{dal@readernum}{0}
\def\reader#1{%
   \ifnum\value{dal@readernum}=5
      \ClassWarningNoLine{dalthesis}%
         {Sorry, provisions have been made to allow only
          five readers}%
   \else
      \addtocounter{dal@readernum}{1}%
      \def\@tempa{@\ifcase\value{dal@readernum}\or
         first\or second\or third\or fourth\or fifth\fi}%
      \expandafter\gdef\csname \@tempa reader\endcsname{#1}%
      \ifnum\value{dal@readernum}>1%
         \csname \@tempa @readertrue\endcsname%
      \fi%
   \fi%
}
\def\firstreader#1{%
   \gdef\@firstreader{#1}%
   \addtocounter{dal@readernum}{1}%
}
\def\secondreader#1{%
   \gdef\@secondreader{#1}\dal@second@readertrue%
   \addtocounter{dal@readernum}{1}%
}
\def\thirdreader#1{%
   \gdef\@thirdreader{#1}\dal@third@readertrue%
   \addtocounter{dal@readernum}{1}%
}
\def\fourthreader#1{%
   \gdef\@fourthreader{#1}\dal@fourth@readertrue%
   \addtocounter{dal@readernum}{1}%
}
\def\fifthreader#1{%
   \gdef\@fifthreader{#1}\dal@fifth@readertrue%
   \addtocounter{dal@readernum}{1}%
}
\def\examiner#1{\gdef\@examiner{#1}}
\def\twosupervisors{\dal@two@supervisorstrue}
\def\dal@CheckForTwoSupervisors{%
   \ifdal@two@supervisors
      \ifx\@cosupervisor\@undefined
         \let\@cosupervisor=\@firstreader%
         \@tempcnta=0%
         \def\@tempa{@\ifcase\the\@tempcnta\or
            first\or second\or third\or fourth\or fifth\fi}%
         \def\@tempb{@\ifcase\the\@tempcnta\or
            second\or third\or fourth\or fifth\fi}%
         \loop
            \advance\@tempcnta by 1
         \ifnum\@tempcnta<\value{dal@readernum}
            \expandafter\xdef\csname \@tempa reader\endcsname{%
               \expandafter\csname \@tempb reader\endcsname}
         \repeat
         \expandafter\let\csname \@tempa reader\endcsname=\@undefined%
         \ifnum\@tempcnta>1
            \def\@tempa{dal@\ifcase\the\@tempcnta\or
               first\or second\or third\or fourth\or fifth\fi}%
            \expandafter\csname \@tempa @readerfalse\endcsname%
         \fi%
         \addtocounter{dal@readernum}{-1}
      \fi%
   \fi%
}
\def\submitdate#1{\gdef\@submitdate{#1}}
\def\copyrightyear#1{\gdef\@copyrightyear{#1}}
\def\degree#1{\gdef\@degree{#1}}
\def\degreeinitial#1{\gdef\@degreeinitial{#1}}
\def\bschon{\degree{Bachelor of Science, Honours}\degreeinitial{B.Sc.~(Hon)}}
\def\masc{\degree{Master of Applied Science}\degreeinitial{M.A.Sc.}}
\def\msc{\degree{Master of Science}\degreeinitial{M.Sc.}}
\def\phd{\degree{Doctor of Philosophy}\degreeinitial{Ph.D.}\dal@phdtrue}
\def\ma{\degree{Master of Arts}\degreeinitial{M.A.}}
\def\@title{}
\def\@author{}
\def\@university{Dalhousie University}
\def\@address{Halifax, Nova Scotia}
\def\@dept{Mathematics and Statistics}
\def\@faculty{Graduate Studies}
\def\@supervisor{}\def\@firstreader{}\def\@secondreader{}
\def\@thirdreader{}\def\@fourthreader{}\def\@fifthreader{}
\def\@examiner{}
\def\@submitdate{%
   \ifcase\the\month\or
   January\or February\or March\or April\or May\or June\or
   July\or August\or September\or October\or November\or
   December\fi
   \space \number\the\day, \number\the\year}
\def\@copyrightyear{\number\the\year}
\def\defencedate#1{\gdef\@defencedate{#1}}
\def\@defencedate{%
   \ifcase\the\month\or
   January\or February\or March\or April\or May\or June\or
   July\or August\or September\or October\or November\or
   December\fi,
   \space \number\the\year}
\def\convocation#1#2{%
   \gdef\@convocationmonth{#1}\gdef\@convocationyear{#2}}
\def\@convwarn{\ClassWarningNoLine{dalthesis}%
   {Convocation date may be incorrect}}
\ifnum\month<5
   \def\@convocationmonth{May}
   \def\@convocationyear{\number\the\year\@convwarn}
\else\ifnum\month<10
      \def\@convocationmonth{October}
      \def\@convocationyear{\number\the\year\@convwarn}
   \else
      \def\@convocationmonth{February}
      \def\@convocationyear{%
         \@tempcnta=\year  \advance\@tempcnta by 1
         \number\the\@tempcnta\@convwarn}
   \fi
\fi
\newcommand{\MakeUppercaseWithNewline}[1]{%
   \begingroup
      \let\orig@newline\\%
      \DeclareRobustCommand{\\}{\orig@newline}%
      \MakeUppercase{#1}%
   \endgroup%
}
\newcommand{\dal@titlepage}{%
   \thispagestyle{empty}%
   \ifdal@draft@mode
     \begin{center}
         \large DRAFT COPY \\
         Printed \today\space\drafttime
      \end{center}
   \fi
   \null\vskip0.5in
   \begin{center}
      \hyphenpenalty=10000\large\MakeUppercaseWithNewline{\@title}
   \end{center}
   \vfill
   \begin{center}
      \rmfamily by\\
      \@author
   \end{center}
   \vfill
   \begin{center}
      \footnotesize SUBMITTED IN PARTIAL FULFILLMENT OF THE \\
      REQUIREMENTS FOR THE DEGREE OF \\
      \MakeUppercaseWithNewline{\@degree} \\[2.5ex]
      AT \\[2.5ex]
      \MakeUppercaseWithNewline{\@university} \\
      \MakeUppercaseWithNewline{\@address} \\
      \MakeUppercaseWithNewline{\@submitdate}
   \end{center}
   \vskip0.75in
   \begin{center}
      \rmfamily \copyright\ Copyright by \@author, \@copyrightyear
   \end{center}
   \clearpage
   }
\newcommand{\dal@eng@titlepage}{%
   \thispagestyle{empty}%
   \ifdal@draft@mode
     \begin{center}
         \large DRAFT COPY \\
         Printed \today\space\drafttime
      \end{center}
   \fi
   \begin{center}
      \hyphenpenalty=10000\large\MakeUppercaseWithNewline{\@title}
   \end{center}
   \vfill
   \begin{center}
      \rmfamily by
   \end{center}
   \vfill
   \begin{center}
      \rmfamily \@author
   \end{center}
   \vfill
   \begin{center}
      \small Submitted in partial fulfillment of the \\
      requirements for the degree of \\
      \vskip 2.5ex
      \MakeUppercaseWithNewline{\@degree} \\
      \vskip 2.5ex
      Major Subject: \@dept \\
      \vskip 2.5ex
      at \\
      \vskip 2.5ex
      \MakeUppercaseWithNewline{\@university} \\
   \end{center}
   \vfill
   {\small \@address \hfill \@defencedate}
   \vskip0.25in
   \begin{center}
      \rmfamily \copyright\ Copyright by \@author, \@copyrightyear
   \end{center}
   \clearpage
   }
\newcommand{\no@breaks}[1]{%
   {\def\\{ \ignorespaces}#1}%
   }
\def\signature#1#2{%
   \ifdal@first@signature
      \dal@first@signaturefalse
   \else
      \sigskip
   \fi
   \parbox[b]{1in}{\smash{#1}\vskip12pt}\hfill
   \parbox[t]{3in}{%
      \shortstack{\vrule width 3in height 0.4pt\\\small#2}}%
   \vskip\baselineskip
   }
\newenvironment{dal@frontpage}%
   {\list{}{\listparindent \z@%
       \itemindent    \z@%
       \rightmargin   \z@%
       \leftmargin    \z@%
       \parsep        \z@ \@plus\p@}%
    \item\relax}
   {\endlist%
    \vfill
    \clearpage}
\newcommand{\dal@signaturepage}{%
   \begin{dal@frontpage}
   \begin{center}
      \MakeUppercaseWithNewline{\@university} \\[\baselineskip]
      DEPARTMENT OF \MakeUppercaseWithNewline{\@dept}
   \end{center}
   \vskip 0.25in plus 0.4in minus 0.1in
   \hyphenpenalty=10000
   \setlength{\parindent}{36pt}
   \begin{sloppypar}
      \hbadness=10000
      The undersigned hereby certify that they have read and
      recommend to the Faculty of \no@breaks{\@faculty}
      for acceptance a thesis entitled
      \linebreak[3] ``{\bfseries \no@breaks{\@title}}''
      \linebreak[3] by \mbox{\bfseries\@author} in partial
      fulfillment of the requirements for the degree of
      \linebreak[2] \mbox{\bfseries\@degree}. \\
   \end{sloppypar}
   \vskip0.2in plus 1fill minus 0.1in
   \begin{flushright}
      Dated: \@submitdate
   \end{flushright}

   \ifdal@fourth@reader
      \newcommand{\sigskip}{\vskip0.15in plus 0.2in minus 0.1in}
      \newcommand{\beginskip}{\vskip0.3875in plus 0.2in minus 0.1in}
   \else
      \newcommand{\sigskip}{\vskip0.4in plus 0.1in}
      \newcommand{\beginskip}{\vskip0.5875in plus 0.1in}
   \fi

   \dal@CheckForTwoSupervisors%
   \beginskip
   \ifdal@phd
      \signature{External Examiner:}{\@examiner}

      \ifdal@two@supervisors
         \signature{Research Supervisors:}{\@supervisor}
         \signature{}{\@cosupervisor}
      \else
         \signature{Research Supervisor:}{\@supervisor}
      \fi
      \signature{Examining Committee:}{\@firstreader}
   \else % not Ph.D. degree:
      \ifdal@two@supervisors
         \signature{Supervisors:}{\@supervisor}
         \signature{}{\@cosupervisor}
      \else
         \signature{Supervisor:}{\@supervisor}
      \fi
      \ifdal@second@reader
         \signature{Readers:}{\@firstreader}
      \else
         \signature{Reader:}{\@firstreader}
      \fi
   \fi

   \ifdal@second@reader
      \signature{}{\@secondreader}
   \fi

   \ifdal@third@reader
      \signature{}{\@thirdreader}
   \fi

   \ifdal@fourth@reader
      \signature{}{\@fourthreader}
   \fi

   \ifdal@fifth@reader
      \signature{}{\@fifthreader}
   \fi
   \end{dal@frontpage}
   }
\newcommand{\dal@eng@signaturepage}{%
   \begin{dal@frontpage}
   \begin{center}
      \large\bfseries
      \@university \\
      Faculty of \@faculty \\
      \ifdal@phd
         % Do nothing.
      \else
         \vskip 2.5ex
         \normalsize\mdseries
         Department of \@dept
         \vskip 2.5ex
      \fi
   \end{center}
   \vskip 0.25in plus 0.4in minus 0.1in
   \hyphenpenalty=10000
   \setlength{\parindent}{0pt}
   \begin{sloppypar}
      \hbadness=10000
      The undersigned hereby certify that they have examined,
      and recommend to the Faculty of Graduate Studies
      for acceptance, the thesis entitled
      \linebreak[3] ``{\bfseries \no@breaks{\@title}}''
      \linebreak[3] by \mbox{\bfseries\@author} in partial
      fulfillment of the requirements for the degree of
      \linebreak[2] \mbox{\bfseries\@degree}. \\
   \end{sloppypar}
   \vskip0.2in plus 1fill minus 0.1in
   \begin{flushright}
      Dated: \underbar{\hbox to 1.5in{}}
   \end{flushright}

   \ifdal@fourth@reader
      \newcommand{\sigskip}{\vskip0.15in plus 0.2in minus 0.1in}
      \newcommand{\beginskip}{\vskip0.3875in plus 0.2in minus 0.1in}
   \else
      \newcommand{\sigskip}{\vskip0.4in plus 0.1in}
      \newcommand{\beginskip}{\vskip0.5875in plus 0.1in}
   \fi

   \dal@CheckForTwoSupervisors%
   \beginskip
   \ifdal@two@supervisors
      \signature{Supervisor:}{\@supervisor}
      \signature{Co-supervisor:}{\@cosupervisor}
   \else
      \signature{Supervisor:}{\@supervisor}
   \fi

   \ifdal@phd
      \signature{External Examiner:}{\@examiner}
   \fi

   \ifdal@second@reader
      \signature{Examiners:}{\@firstreader}
      \signature{}{\@secondreader}
   \else
      \signature{Examiner:}{\@firstreader}
   \fi

   \ifdal@third@reader
      \signature{}{\@thirdreader}
   \fi

   \ifdal@fourth@reader
      \signature{}{\@fourthreader}
   \fi

   \ifdal@fifth@reader
      \signature{}{\@fifthreader}
   \fi
   \end{dal@frontpage}
   }
\newcommand{\dal@permissionpage}{%
   {\newpage
   \setlength{\parindent}{0.75in}
   \hyphenpenalty=10000
   \begin{dal@frontpage}
      \begin{center}
         \large \MakeUppercaseWithNewline{\@university}
      \end{center}
      \bigskip
      \begin{flushright}
         Date: {\bfseries\@submitdate}
      \end{flushright}
      \begin{list}{}{%
         \settowidth{\labelwidth}{Department:}
         \setlength{\leftmargin}{\labelwidth}
         \addtolength{\leftmargin}{1em}
         \setlength{\itemindent}{0pt}
         \setlength{\labelsep}{\leftmargin}
         \addtolength{\labelsep}{-\labelwidth}}
         \raggedright
         \item[Author: \hfill] {\bfseries\@author}
         \item[Title:  \hfill] {\bfseries\no@breaks{\@title}}
         \item[Department:]    {\bfseries\@dept}
      \end{list}
      Degree:      {\bfseries\@degreeinitial\hfill}
      Convocation: {\bfseries\@convocationmonth\hfill}
      Year:        {\bfseries\@convocationyear} \\
      \bigskip
      \linespread{1}\normalsize
      \setlength{\parindent}{36pt}

      \indent
      {\small Permission is herewith granted to
       \no@breaks{\@university}
       to circulate and to have copied for non-commercial
       purposes, at its discretion, the above title upon
       the request of individuals or institutions.}

      \bigskip\bigskip

      \begin{sloppypar}
         \footnotesize
         \relax
         \hbadness=10000
         The author reserves other publication rights, and
         neither the thesis nor extensive extracts from it
         may be printed or otherwise reproduced without the
         author's written permission.
         \medskip

         The author attests that permission has been obtained
         for the use of any copyrighted material appearing in
         the thesis (other than brief excerpts requiring only
         proper acknowledgement in scholarly writing) and that
         all such use is clearly acknowledged.
      \end{sloppypar}

      \vskip1.5in
      \signature{}{{\small Signature of Author}}

   \end{dal@frontpage}
   }
   }
\newcommand{\dal@eng@permissionpage}{%
   {\newpage
   \setlength{\parindent}{0pt}
   \hyphenpenalty=10000
   \begin{dal@frontpage}
      \begin{center}
         \large\bfseries
         \@university \\
         Faculty of \@faculty
      \end{center}
      \bigskip
      \begin{flushright}
         DATE: \underbar{\hbox to 1.5in{}}
      \end{flushright}
      \begin{list}{}{%
         \settowidth{\labelwidth}{\bfseries MAJOR SUBJECT:}
         \setlength{\leftmargin}{\labelwidth}
         \addtolength{\leftmargin}{1em}
         \setlength{\itemindent}{0pt}
         \setlength{\labelsep}{\leftmargin}
         \addtolength{\labelsep}{-\labelwidth}}
         \raggedright
         \item[\bfseries AUTHOR:      \hfill] {\@author}
         \item[\bfseries TITLE:       \hfill] {\no@breaks{\@title}}
         \item[\bfseries MAJOR SUBJECT:]      {\no@breaks{\@dept}}
         \item[\bfseries DEGREE:      \hfill] {\no@breaks{\@degree}}
         \item[\bfseries CONVOCATION: \hfill] {\@convocationmonth,
            \@convocationyear}
      \end{list}
      \bigskip
      \linespread{1}\normalsize

      \indent
      {\small Permission is herewith granted to
       \no@breaks{\@university}
       to circulate and to have copied for non-commercial
       purposes, at its discretion, the above thesis upon
       the request of individuals or institutions.}


      \bigskip\bigskip

      \begin{sloppypar}
         \small
         \relax
         \hbadness=10000
         The author reserves other publication rights, and
         neither the thesis nor extensive extracts from it
         may be printed or otherwise reproduced without the
         author's written permission.
         \bigskip\bigskip

         The author attests that permission has been obtained
         for the use of any copyrighted material appearing in
         the thesis (other than brief excerpts requiring only
         proper acknowledgement in scholarly writing), and that
         all such use is clearly acknowledged.
      \end{sloppypar}

      \vskip1.5in
      \signature{}{{\small Signature of Author}}


   \end{dal@frontpage}
   }
   }
\newcommand{\dedicate}[1]{%
   \dal@dedicationtrue
   \gdef\dedication@text{%
      \begin{center}
         \large\em\null\vskip1in#1\vfill
      \end{center}
      }%
   }
\newenvironment{dedication}%
   {\newbox\dedicate@box
    \global\setbox\dedicate@box=\vbox\bgroup
    \begin{center}
    \large\em\null\vskip1in}
   {\vfill%
    \end{center}
    \egroup
    \global\dal@dedicationtrue\gdef\dedication@text{\copy\dedicate@box}}
\renewenvironment{abstract}[1][d]%
   {\newpage
    \if s#1 % abstract to be typeset in single-space
       \linespread{1}\normalsize % Switch to single-spacing
    \fi
    \newcount\ab@page
    \ab@page=-\arabic{page}
    \prefacesection{\abstractname}}
   {\vfil
    \advance \ab@page by \arabic{page}
    \ifnum\ab@page>0
       \ClassWarningNoLine{dalthesis}%
          {Abstract longer than one page}
    \fi}
\newcommand{\ackname}{Acknowledgements}
\newenvironment{acknowledgements}%
   {\prefacesection{\ackname}}
   {\vfil}
\let\acknowledgments\acknowledgements
\let\endacknowledgments\endacknowledgements
\renewcommand{\contentsname}{Table of Contents}
\def\frontmatter{%
   \typeout{Unavoidable over/underfulls may occur in the first^^J%
            few pages of dalthesis. These can usually be ignored.^^J%
            However, if uncorrectable errors occur, notify staff.}
   \pagenumbering{roman}
   \pagestyle{plain}
   \dal@in@prefacetrue
   \ifdal@title@page
      \dal@set@textheight{\dal@textheight@default}
      \ifdal@fac@engineering
         \dal@eng@titlepage
      \else
         \dal@titlepage
      \fi
   \else
      \addtocounter{page}{1}
   \fi
   \dal@set@textheight{\dal@textheight@footer}
   \ifdal@signature@page
      \ifdal@fac@engineering
         \dal@eng@signaturepage
      \else
         \dal@signaturepage
      \fi
   \else
      \addtocounter{page}{1}
   \fi
   \ifdal@permission@page
      \ifdal@fac@engineering
         \dal@eng@permissionpage
      \else
         \dal@permissionpage
      \fi
   \else
      \addtocounter{page}{1}
   \fi
   \ifdal@dedication
      \ifdal@dedication@page
         \dedication@text
         \clearpage
      \else
         \addtocounter{page}{1}
      \fi
   \fi
   \ifdal@contents@page
      \tableofcontents
      \clearpage
   \else
      \addtocounter{page}{1}
   \fi
   \ifdal@tables@page
      \addcontentsline{toc}{chapter}{\listtablename}
      \listoftables
      \clearpage
   \fi
   \ifdal@figures@page
      \addcontentsline{toc}{chapter}{\listfigurename}
      \listoffigures
      \clearpage
   \fi
   }
\def\mainmatter{\newpage
        \typeout{Dalthesis preface pages completed.}
        \pagenumbering{arabic}
        \properpagestyle
        \dal@set@textheight{\dal@textheight@default}
        \dal@in@prefacefalse
   }
\def\beforepreface{\frontmatter}
\def\afterpreface{\mainmatter}
\def\nonumchapter#1{%
        \chapter*{#1}
        \addcontentsline{toc}{chapter}{#1}
   }
\def\prefacesection#1{%
        \chapter*{#1}
        \addcontentsline{toc}{chapter}{#1}
   }
\def\draft{%
   \newcount\drafthours
   \newcount\draftmins
   \drafthours\time
   \divide\drafthours 60
   \draftmins=-\drafthours
   \multiply\draftmins 60
   \advance\draftmins \time
   \xdef\drafttime{\two@digits{\the\drafthours}:%
      \two@digits{\the\draftmins}}
   %\let\ps@plain\ps@myheadings
   \def\ps@plain{\let\@mkboth\@gobbletwo
      \def\@oddhead{{\rmfamily\slshape Draft Version -- \today%
         \space\drafttime}\hfil}
      \def\@oddfoot{\reset@font\hfil\thepage\hfil}
      \let\@evenhead\@oddhead\let\@evenfoot\@oddfoot}
   \renewcommand{\properpagestyle}{\pagestyle{myheadings}
      \markright{{\rmfamily Draft Version -- \today\space%
      \drafttime}}}
   \dal@draft@modetrue\properpagestyle
   }
\def\notitlepage{\dal@title@pagefalse}
\def\nosignaturepage{\dal@signature@pagefalse}
\def\nopermissionpage{\dal@permission@pagefalse}
\def\nodedicationpage{\dal@dedication@pagefalse}
\def\notableofcontents{\dal@contents@pagefalse}
\def\nolistoftables{\dal@tables@pagefalse}
\def\nolistoffigures{\dal@figures@pagefalse}
\def\nofront{%
   \dal@signature@pagefalse
   \dal@permission@pagefalse
   \dal@dedication@pagefalse
   \dal@contents@pagefalse
   \dal@tables@pagefalse
   \dal@figures@pagefalse
   }
\def\nobib{\dal@print@bibfalse}
\msc
\properpagestyle
\InputIfFileExists{dalthesis.cfg}
   {\typeout{Local config file dalthesis.cfg used.}}{}
\endinput
%%
%% End of file `dalthesis.cls'.
