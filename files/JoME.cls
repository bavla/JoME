%%
%% JoME.cls
%% by Vladimir Batagelj
%%
%% version 0.1     October 19, 2016 - basic structure
%% version 0.2     New Year 2017    -
%% version 0.3     February 2017    - fonts and dimensions
%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{JoME}[2017/01/03 v0.2 Strojniski vestnik - Journal of Mechanical Engineering class]

\LoadClass[twoside,twocolumn]{article}
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{fancybox}
\RequirePackage{latexsym}
\RequirePackage[pagestyles]{titlesec}
\RequirePackage{url}
\RequirePackage{caption}
\RequirePackage{mdframed}
\RequirePackage{xcolor}
\RequirePackage{mathptmx}
\RequirePackage{courier}
\RequirePackage[scaled=.90]{helvet}
\RequirePackage[pdflatex,cam,a4,center]{crop}
\RequirePackage{floatrow}

\definecolor{lightGray}{gray}{0.80}
\newmdenv[
  linecolor= lightGray,
  leftmargin = 10mm,
  innerleftmargin = 1em,
  innertopmargin = 0pt,
  innerbottommargin = 0pt,
  innerrightmargin = 0pt,
  rightmargin = 0pt,
  linewidth = 5.5pt,
  topline = false,
  rightline = false,
  bottomline = false
  ]{leftbar}

\newcommand{\clock}{\count254=\time \divide\count254 by 60
 \count255=\count254 \multiply\count255 by -60
 \advance\count255 by \time
 \ifnum\count254<10 0\fi\number\count254\,:\,%
 \ifnum\count255<10 0\fi\number\count255}


% nohyphenation
\hyphenpenalty=10000
\exhyphenpenalty=10000


\newcommand{\Brow}{\fontencoding{T1}\fontfamily{phv}\fontseries{mc}\fontshape{n}\fontsize{8}{9.6pt}\selectfont}
\DeclareFloatFont{Brow}{\Brow}
\floatsetup[table]{font=Brow,capposition=top}
\captionsetup{justification=justified}

\newcommand{\Ha}{\fontencoding{T1}\fontfamily{phv}\fontseries{mc}\fontshape{n}\fontsize{7}{8.4pt}\selectfont}
\newcommand{\Hb}{\fontencoding{T1}\fontfamily{phv}\fontseries{bc}\fontshape{n}\fontsize{7}{8.4pt}\selectfont}
\newcommand{\Hc}{\fontencoding{T1}\fontfamily{phv}\fontseries{mc}\fontshape{sl}\fontsize{7}{8.4pt}\selectfont}
\newcommand{\Habs}{\fontencoding{T1}\fontfamily{phv}\fontseries{mc}\fontshape{sl}\fontsize{9}{10.8pt}\selectfont}
\newcommand{\Hlab}{\fontencoding{T1}\fontfamily{phv}\fontseries{mc}\fontshape{n}\fontsize{9}{10.8pt}\selectfont}
\DeclareFixedFont{\Hd}{T1}{phv}{bx}{n}{10pt}
\DeclareFixedFont{\Htit}{T1}{ptm}{b}{n}{16pt}
\DeclareFixedFont{\Hkey}{T1}{phv}{bc}{n}{9pt}
\DeclareFixedFont{\Bsec}{T1}{phv}{m}{n}{10pt}
\DeclareFixedFont{\Bsse}{T1}{phv}{bc}{n}{10pt}
\DeclareFixedFont{\Bsss}{T1}{phv}{bc}{sl}{10pt}
%\DeclareFixedFont{\Bcap}{T1}{phv}{mc}{sl}{10pt}
\newcommand{\Haut}{\fontencoding{T1}\fontfamily{ptm}\fontseries{m}\fontshape{n}\fontsize{10}{12pt}\selectfont}
\newcommand{\Haff}{\fontencoding{T1}\fontfamily{ptm}\fontseries{m}\fontshape{n}\fontsize{12}{10pt}\selectfont}
\newcommand{\Hind}{\fontencoding{T1}\fontfamily{ptm}\fontseries{m}\fontshape{n}\fontsize{8}{8.4pt}\selectfont}
\newcommand{\Bc}{\fontencoding{T1}\fontfamily{phv}\fontseries{m}\fontshape{n}\fontsize{9}{10.2pt}\selectfont}

\newcommand{\svTitle}[1]{\def\svtitle{#1}\title{\Htit{#1}}}
%\newcommand{\svRunning}[1]{\def\svrunning{#1}}
\newenvironment{svAbstract}{\vspace*{-5mm}\Habs}{\smallskip}
\newenvironment{svHigh}{\strut\hspace*{10mm}\begin{minipage}{150mm}\begin{leftbar}\Hkey{Highlights}\Habs\\ \vspace*{-6mm}
  \begin{itemize}\setlength\itemsep{-4pt}}%
  {\end{itemize}\end{leftbar}\end{minipage}\vspace*{5mm}\par}
\newenvironment{svHead}{\begin{@twocolumnfalse}\Haut\maketitle\thispagestyle{first}}{\bigskip\end{@twocolumnfalse}}
\newcommand{\svKeywords}[1]{\Hkey{Keywords: #1}\bigskip}
\newcommand{\svSV}{Strojniški vestnik - Journal of Mechanical Engineering vol(yyyy)no, p-p}
\newcommand{\svDates}[3]{\def\svReview{#1}\def\svRevise{#2}\def\svAccept{#3}}
\svDates{yyyy-mm-dd}{yyyy-mm-dd}{yyyy-mm-dd}
\newcommand{\svAuthors}{Author's Name Surname, Co-author's Name Surname}
\newcommand{\svCyear}{2017}
\newcommand{\svDOI}{DOI code}
\newcommand{\svType}{Original Scientific Paper}

\setcounter{section}{-1}
\renewcommand{\thesection}{\arabic{section}}
\DeclareUrlCommand\email{}
\captionsetup{labelsep=period}
\DeclareCaptionOptionNoValue*{sf}{\l@addto@macro\captionlabelfont\Hlab}
\captionsetup{labelfont={sf,bf},textfont={sf,sl}}
\renewcommand{\figurename}{Fig.}
\renewcommand{\refname}{}

\titleformat{\section}[block]{\Bsec\filcenter}{\thesection}{1ex}{\MakeUppercase}
\titleformat{\subsection}[hang]{\Bsse}{\thesubsection}{1ex}{}
\titleformat{\subsubsection}[hang]{\Bsss}{\thesubsubsection}{1ex}{}

\titlespacing*{\section} {0pt}{2.0ex plus 1ex minus .2ex}{2.0ex plus .2ex}
\titlespacing*{\subsection} {0pt}{2.0ex plus 1ex minus .2ex}{1.0ex plus .2ex}
\titlespacing*{\subsubsection}{0pt}{2.0ex plus 0.2ex minus .2ex}{1.00ex plus .2ex}
\titlespacing*{\paragraph} {0pt}{3.25ex plus 1ex minus .2ex}{1em}
\titlespacing*{\subparagraph}{\parindent}{3.25ex plus 1ex minus .2ex}{1em}

\newcommand{\svCorr}{*Corr. Author's Address: Name of institution, Address, City, Country, \email{xxx.yyy@xxxxxx.yyy}}

\def\bibitem{\Bc\@ifnextchar[\@lbibitem\@bibitem}
\def\author#1{\gdef\@author{#1}}
\newcommand{\svMark}[1]{{\Hind\textsuperscript{#1}}}
\newcommand{\svAffil}[2]{\svMark{#1}\Haff#2}

\newpagestyle{first}[\Ha]{
\footrule
\renewcommand{\makefootrule}{\rule[1.5\baselineskip]{55mm}{1pt}}
\sethead{\parbox{80mm}{\svSV\\
© \svCyear\ Journal of Mechanical Engineering. All rights reserved.\\
\Hc\svType\  --- \Hb\svDOI}}{}{\parbox{35mm}{\begin{flushright}Received for review: \svReview\\
Received revised form: \svRevise\\
Accepted for publication: \svAccept\end{flushright}}}
\setfoot[\Hd\thepage][][\Ha\svCorr]{\Ha\svCorr}{}{\Hd\thepage}
}

\newpagestyle{main}[\Ha]{
\sethead{}{\svSV}{}
\setfoot[\Hd\thepage][\Hc\svAuthors][]{}{\Hc\svtitle}{\Hd\thepage}
}

\renewcommand*{\@cite@ofmt}{\Bsse\hbox}
\oddsidemargin 5pt \evensidemargin 5pt \marginparwidth 20pt
\marginparsep 10pt \topmargin -12 true mm \headheight 12pt \headsep 25pt
\textheight 23 true cm \textwidth 161 true mm
\columnsep 8mm \columnseprule 0pt
\parskip 1pt
\setlength\parindent{6.4mm}
\pagestyle{main}

\endinput
%%
%% End of file `JoME.cls'.



