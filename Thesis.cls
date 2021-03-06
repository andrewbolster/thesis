%%
%% This is file `Thesis.cls', based on 'ECSthesis.cls', by Steve R. Gunn
%% generated with the docstrip utility.
%%
%% Created by Steve R. Gunn, modified by Sunil Patel: www.sunilpatel.co.uk

\NeedsTeXFormat{LaTeX2e}[1996/12/01]
\ProvidesClass{Thesis}
              [2007/22/02 v1.0
   LaTeX document class]
\def\baseclass{book}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\baseclass}}
\def\@checkoptions#1#2{
  \edef\@curroptions{\@ptionlist{\@currname.\@currext}}
  \@tempswafalse
  \@tfor\@this:=#2\do{
    \@expandtwoargs\in@{,\@this,}{,\@curroptions,}
    \ifin@ \@tempswatrue \@break@tfor \fi}
  \let\@this\@empty
  \if@tempswa \else \PassOptionsToClass{#1}{\baseclass}\fi
}
\@checkoptions{11pt}{{10pt}{11pt}{12pt}}
\PassOptionsToClass{a4paper}{\baseclass}
\ProcessOptions\relax
\LoadClass{\baseclass}
\newcommand\bhrule{\typeout{------------------------------------------------------------------------------}}

\newcommand\Declaration[1]{
\btypeout{Declaration of Authorship}
\addtotoc{Declaration of Authorship}
\thispagestyle{plain}
\null\vfil
%\vskip 60\p@
\begin{center}{\huge\bf Declaration of Authorship\par}\end{center}
%\vskip 60\p@
{\normalsize #1}
\vfil\vfil\null
%\cleardoublepage
}

\newcommand\btypeout[1]{\bhrule\typeout{\space #1}\bhrule}
\def\today{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space \number\year}

% SPACING AND FORMATTING 
\usepackage[subtle]{savetrees}
\usepackage{setspace}
\doublespacing

%http://tex.stackexchange.com/questions/7262/diagonally-divided-table-cell
\usepackage{diagbox}


\usepackage{longtable}
\usepackage{titlesec}
\usepackage{vmargin}
\setmarginsrb           { 1.5in}  % left margin
                        { 0.6in}  % top margin
                        { 1.0in}  % right margin
                        { 0.8in}  % bottom margin
                        {  20pt}  % head height
                        {0.25in}  % head sep
                        {   9pt}  % foot height
                        { 0.3in}  % foot sep
\raggedbottom
\setlength{\topskip}{1\topskip \@plus 5\p@}
\doublehyphendemerits=10000       % No consecutive line hyphens.
\brokenpenalty=10000              % No broken words across columns/pages.
\widowpenalty=9999                % Almost no widows at bottom of page.
\clubpenalty=9999                 % Almost no orphans at top of page.
\interfootnotelinepenalty=9999    % Almost never break footnotes.


\usepackage{fancyhdr}
\lhead[\rm\thepage]{\fancyplain{}{\sl{\rightmark}}}
\rhead[\fancyplain{}{\sl{\leftmark}}]{\rm\thepage}
\chead{}\lfoot{}\rfoot{}\cfoot{}
\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{\btypeout{\thechapter\space #1}\markboth{\@chapapp\ \thechapter\ #1}{\@chapapp\ \thechapter\ #1}}
\renewcommand{\sectionmark}[1]{}
\renewcommand{\subsectionmark}[1]{}
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
\hbox{}
\thispagestyle{empty}
\newpage
\if@twocolumn\hbox{}\newpage\fi\fi\fi}
\usepackage{amsmath,amsfonts,amssymb,amscd,amsthm,xspace}
\theoremstyle{plain}
\newtheorem{example}{Example}[chapter]
\newtheorem{theorem}{Theorem}[chapter]
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem{axiom}[theorem]{Axiom}
\theoremstyle{definition}
\newtheorem{definition}[theorem]{Definition}
\theoremstyle{remark}
\newtheorem{remark}[theorem]{Remark}

\usepackage[centerlast,small,sc]{caption}
\setlength{\captionmargin}{20pt}
\newcommand{\fref}[1]{Figure~\ref{#1}}
\newcommand{\tref}[1]{Table~\ref{#1}}
\newcommand{\eref}[1]{Equation~\ref{#1}}
\newcommand{\cref}[1]{Chapter~\ref{#1}}
\newcommand{\sref}[1]{Section~\ref{#1}}
\newcommand{\aref}[1]{Appendix~\ref{#1}}
\renewcommand{\topfraction}{0.85}
\renewcommand{\bottomfraction}{.85}
\renewcommand{\textfraction}{0.1}
\renewcommand{\dbltopfraction}{.85}
\renewcommand{\floatpagefraction}{0.75}
\renewcommand{\dblfloatpagefraction}{.75}
\setcounter{topnumber}{9}
\setcounter{bottomnumber}{9}
\setcounter{totalnumber}{20}
\setcounter{dbltopnumber}{9}

\usepackage[svgnames]{xcolor}
\usepackage{graphicx}
\usepackage{epstopdf}
\usepackage[%
    font={small,sf},
    labelfont=bf,
    format=hang,    
    format=plain,
    margin=0pt,
    width=0.8\textwidth,
]{caption}
\usepackage[list=false, listformat=simple]{subcaption}
\captionsetup{compatibility=false}
\usepackage{booktabs}
\usepackage{array}
\renewcommand{\arraystretch}{1.3}
\usepackage{rotating}
\usepackage{pifont}
\usepackage{listings}
\usepackage{lstpatch}
\lstset{captionpos=b,
        frame=tb,
        basicstyle=\scriptsize\ttfamily,
        showstringspaces=false,
        keepspaces=true}
\lstdefinestyle{matlab} {
        language=Matlab,
        keywordstyle=\color{blue},
        commentstyle=\color[rgb]{0.13,0.55,0.13}\em,
        stringstyle=\color[rgb]{0.7,0,0} }
\usepackage{hyperref}
\pdfstringdefDisableCommands{
   \let\\\space
}



\usepackage[square, numbers, comma, sort&compress]{natbib}  % Use the "Natbib" style for the references in the Bibliography
\usepackage{verbatim,listings}  % Needed for the "comment" environment to make LaTeX comments
\usepackage{array}  % Needed for the "comment" environment to make LaTeX comments
\usepackage{vector}  % Allows "\bvec{}" and "\buvec{}" for "blackboard" style bold vectors in maths
\usepackage{amsmath,amsfonts,amsthm,color,psfrag,epsf, tabularx, multirow, longtable, pdflscape}
\usepackage{snapshot, todonotes}
\usepackage{enumerate}
\usepackage[ruled,linesnumbered,vlined]{algorithm2e}
\usepackage{float}

\usepackage{epigraph} % epigraph
\usepackage{eurosym} % Euro Symbol
\usepackage[detect-weight=true, binary-units=true, range-units=single]{siunitx} % Properly Centered numbers in tables
\usepackage{afterpage}
\usepackage[xindy]{glossaries} 
\usepackage{pgf}
\usepackage{titletoc}
\usepackage{tocloft}
\usepackage{csquotes}
\usepackage{pgfplots}
\usepackage{bibentry}
\nobibliography*

\usepackage{nameref}
\usepackage{tikz}
\usetikzlibrary{shapes,shapes.misc,arrows,positioning,calc,fit}

\usepackage{layouts}
\usepackage{wrapfig}

\usepackage{enumitem}


\newcommand*{\supervisor}[1]{\def\supname{#1}}
\newcommand*{\examiner}[1]{\def\examname{#1}}
\newcommand*{\degree}[1]{\def\degreename{#1}}
\newcommand*{\authors}[1]{\def\authornames{#1}}
\newcommand*{\addresses}[1]{\def\addressnames{#1}}
\newcommand*{\university}[1]{\def\univname{#1}}
\newcommand*{\UNIVERSITY}[1]{\def\UNIVNAME{#1}}
\newcommand*{\department}[1]{\def\deptname{#1}}
\newcommand*{\DEPARTMENT}[1]{\def\DEPTNAME{#1}}
\newcommand*{\group}[1]{\def\groupname{#1}}
\newcommand*{\GROUP}[1]{\def\GROUPNAME{#1}}
\newcommand*{\faculty}[1]{\def\facname{#1}}
\newcommand*{\FACULTY}[1]{\def\FACNAME{#1}}
\newcommand*{\subject}[1]{\def\subjectname{#1}}
\newcommand*{\keywords}[1]{\def\keywordnames{#1}}


%% Title information

\title  {An Investigation into Trust and Reputation Frameworks for Autonomous Underwater Vehicles}
\authors  {Andrew Bolster}
\date       {\today}
\supervisor  {Prof. Alan Marshall}
\examiner    {}
\degree      {}
\authors     {Andrew Bolster}
\university  {\texorpdfstring{\href{http://liv.ac.uk}
                {University of Liverpool}}
                {University of Liverpool}}
\UNIVERSITY  {\texorpdfstring{\href{University Web Site URL Here (include http://)}
                {UNIVERSITY OF LIVERPOOL}}
                {UNIVERSITY OF LIVERPOOL}}
\department  {\texorpdfstring{\href{Department or School Web Site URL Here (include http://)}
                {Department of Electrical Engineering, Electronics \& Computer Science}}
                {Department of Electrical Engineering, Electronics \& Computer Science}}
\DEPARTMENT  {\texorpdfstring{\href{Department or School Web Site URL Here (include http://)}
                {DEPARTMENT OF ELECTRICAL ENGINEERING, ELECTRONICS \& COMPUTER SCIENCE}}
                {DEPARTMENT OF ELECTRICAL ENGINEERING, ELECTRONICS \& COMPUTER SCIENCE}}
\group       {\texorpdfstring{\href{Research Group Web Site URL Here (include http://)}
                {ANRG}}
                {ANRG}}
\GROUP       {\texorpdfstring{\href{Research Group Web Site URL Here (include http://)}
                {ANRG}}
                {ANRG}}
\faculty     {\texorpdfstring{\href{Faculty Web Site URL Here (include http://)}
                {Faculty of Science}}
                {Faculty of Science}}
\FACULTY     {\texorpdfstring{\href{Faculty Web Site URL Here (include http://)}
                {FACULTY OF SCIENCE}}
                {FACULTY OF SCIENCE}}
\addresses   {}
\subject     {}
\keywords    {}
\addresses  {\groupname\\\deptname\\\univname}  



\hypersetup{
	bookmarks=true,         % show bookmarks bar?
	bookmarksopen=true,
	unicode=true,          % non-Latin characters in Acrobat’s bookmarks
	pdftoolbar=false,        % show Acrobat’s toolbar?
	pdfmenubar=true,        % show Acrobat’s menu?
	pdffitwindow=false,     % window fit to page when opened
	pdfstartview={FitH},    % fits the width of the page to the window
	pdfnewwindow=true,      % links in new window
	colorlinks=true,       % false: boxed links; true: colored links
	linkcolor=DarkBlue,          % color of internal links (change box color with linkbordercolor)
	citecolor=blue,        % color of links to bibliography
	filecolor=red,      % color of file links
	urlcolor=DarkBlue,           % color of external links
	pdfpagemode={UseOutlines},
	bookmarksopenlevel=0,
	bookmarksnumbered=true,
	hypertexnames=true,
	linkbordercolor={black},
	%pdfborderstyle={/S/U/W 1},
	pdfstartview={FitV},
	breaklinks=true
}

\usepackage[anythingbreaks]{breakurl}

%\renewcommand*{\glstextformat}[1]{\textcolor{Indigo}{#1}} % % TO CUSTOMISE GLOSSARY COLOUR

\renewcommand\maketitle{
  \btypeout{Title Page}
  \hypersetup{pdftitle={\@title}}
  \hypersetup{pdfsubject=\subjectname}
  \hypersetup{pdfauthor=\authornames}
  \hypersetup{pdfkeywords=\keywordnames}
  \thispagestyle{empty}
  \begin{titlepage}
    \let\footnotesize\small
    \let\footnoterule\relax
    \let \footnote \thanks
    \setcounter{footnote}{0}
    \null\vfil
    \vskip 6\p@
          \bigskip
    \begin{center}
      \setlength{\parskip}{0pt}
    \includegraphics[width=7cm]{./Figures/logoc}

      \bigskip      
      \vfill
      {\LARGE \@title \par}
      \vfill
            \bigskip
      \bigskip


      {\large Thesis submitted in accordance with the requirements of\par}
      {\large the University of Liverpool for the degree of Doctor in Philosophy by \par}
       \bigskip
      {\large \bf \authornames \par}

      \bigskip
       \bigskip           \bigskip    
              \bigskip           \bigskip    
       \bigskip     

      \vfill
      {\large \@date \par}
      \bigskip
            \bigskip
    \end{center}
    \par
    \@thanks
    \vfil\null
  \end{titlepage}
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
  \cleardoublepage
}
\newenvironment{abstract}
{
  \btypeout{Abstract Page}
  \thispagestyle{empty}
  \null\vfil
  \begin{center}
    \setlength{\parskip}{0pt}
    {\normalsize \UNIVNAME \par}
    \bigskip
    {\huge{\textit{Abstract}} \par}
    \bigskip
    {\normalsize \facname \par}
    {\normalsize \deptname \par}
    \bigskip
    {\normalsize Doctor of Philosophy\par}
    \bigskip
    {\normalsize\bf \@title \par}
    \medskip
    {\normalsize by \authornames \par}
    \bigskip
  \end{center}
}
{
  \vfil\vfil\vfil\null
  \cleardoublepage
}
\addtocounter{secnumdepth}{1}
\setcounter{tocdepth}{6}
\newcounter{dummy}

\newcommand\addtotoc[1]{
\refstepcounter{dummy}
\addcontentsline{toc}{chapter}{#1}}

\renewcommand{\cftchappresnum}{Chapter }
\AtBeginDocument{\addtolength\cftchapnumwidth{\widthof{\bfseries Appendix~}}}

\g@addto@macro\appendix{%
  \addtocontents{toc}{%
      \protect\renewcommand{\protect\cftchappresnum}{\appendixname\space}%
        }%
        }



\renewcommand\tableofcontents{
\btypeout{Table of Contents}
\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\contentsname
        \@mkboth{
           \MakeUppercase\contentsname}{\MakeUppercase\contentsname}
    }
    \@starttoc{toc}
    \if@restonecol\twocolumn\fi
   \cleardoublepage
}\end{spacing}
}
\def\listoffigures{\@restonecolfalse\if@twocolumn\@restonecoltrue\onecolumn
 \fi\section*{\listfigurename\@mkboth{{\listfigurename}}{{\listfigurename}}}
 \@starttoc{lof}\if@restonecol\twocolumn\fi}
\def\l@figure{\@dottedtocline{1}{0em}{2.5em}}


\renewcommand\listoffigures{%
    \section*{\listfigurename
      \@mkboth{\listfigurename}{\listfigurename}}%
    \@starttoc{lof}%
    }

    
    \def\listoftables{\@restonecolfalse\if@twocolumn\@restonecoltrue\onecolumn
 \fi\section*{\listtablename\@mkboth{{\listtablename}}{{\listtablename}}}
 \@starttoc{lot}\if@restonecol\twocolumn\fi}
\let\l@table\l@figure

\renewcommand\listoftables{%
    \section*{\listtablename
      \@mkboth{\listtablename}{\listtablename}}%
    \@starttoc{lot}%
    }

    

    
    
    
\newcommand\listsymbolname{Abbreviations}

\newcommand\listofsymbols[2]{
\btypeout{\listsymbolname}
\addtotoc{\listsymbolname}
    \chapter*{\listsymbolname
      \@mkboth{
          \MakeUppercase\listsymbolname}{\MakeUppercase\listsymbolname}}
\begin{longtable}[c]{#1}#2\end{longtable}\par
    \cleardoublepage
}
\newcommand\listconstants{Physical Constants}
\usepackage{longtable}
\newcommand\listofconstants[2]{
\btypeout{\listconstants}
\addtotoc{\listconstants}
    \chapter*{\listconstants
      \@mkboth{
          \MakeUppercase\listconstants}{\MakeUppercase\listconstants}}
\begin{longtable}[c]{#1}#2\end{longtable}\par
    \cleardoublepage
}
\newcommand\listnomenclature{Notations}
\usepackage{longtable}
\newcommand\listofnomenclature[2]{
\btypeout{\listnomenclature}
\addtotoc{\listnomenclature}
    \chapter*{\listnomenclature
      \@mkboth{
          \MakeUppercase\listnomenclature}{\MakeUppercase\listnomenclature}}
         The following notations and abbreviations are found throughout this thesis: 
         {\par
\begin{longtable}[l]{#1}#2\end{longtable}} \par 

    \cleardoublepage
}
\newcommand\acknowledgements[1]{
\btypeout{Acknowledgements}
\addtotoc{Acknowledgements}
\thispagestyle{plain}
{\huge{\text{Acknowledgements}} \par}
{\normalsize #1}
\vfil\vfil\null

}

\newcommand\preface[1]{
\btypeout{Preface}
\addtotoc{Preface}
\thispagestyle{plain}
{\huge{\text{Preface}} \par}
{\normalsize #1}
\vfil\vfil\null

}

\newcommand\dedicatory[1]{
\btypeout{Dedicatory}
\thispagestyle{plain}
\null\vfil
\vskip 60\p@
\begin{center}{\Large \sl #1}\end{center}
\vfil\null
\cleardoublepage
}
\renewcommand\backmatter{
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \addtotoc{\bibname}
  \btypeout{\bibname}
  \@mainmatterfalse}
\endinput



%Below from http://www.khirevich.com/latex/microtype/
\usepackage[activate={true,nocompatibility},final,tracking=true,kerning=true,spacing=true,factor=1100,stretch=10,shrink=10]{microtype}
% activate={true,nocompatibility} - activate protrusion and expansion
% final - enable microtype; use "draft" to disable
% tracking=true, kerning=true, spacing=true - activate these techniques
% factor=1100 - add 10% to the protrusion amount (default is 1000)
% stretch=10, shrink=10 - reduce stretchability/shrinkability (default is 20/20)
%%
% http://tex.stackexchange.com/questions/75449/specifying-the-width-and-height-of-a-tikzpicture/320521#320521
\usepackage{tikzscale}
%% End of file `Thesis.cls'.
