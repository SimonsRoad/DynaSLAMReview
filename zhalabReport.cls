\NeedsTeXFormat{LaTeX2e}[2007/10/19]
\ProvidesClass{zhalabReport}
	[2015/02/10 v1.0 beta1 Notes Template]


\LoadClass[a4paper,UTF8,zihao = -4]{ctexrep}

%\LoadClass[a4paper,11pt,UTF8]{book}


\RequirePackage{fontspec}
\RequirePackage{amsmath, amsfonts, amssymb} % math equations, symbols
\RequirePackage{color}      % 用来给注释部分上色的package
\RequirePackage{graphicx}   % import figures
\RequirePackage{url}        % hyperlinks
\RequirePackage{bm}         % bold type for equations
\RequirePackage{booktabs}
\RequirePackage{epstopdf}
\RequirePackage{epsfig}
\RequirePackage{algorithm}
\RequirePackage{algorithmic}
\RequirePackage{subfig}

\RequirePackage{enumitem, cite}
\RequirePackage{setspace, geometry, indentfirst, times, color}
\RequirePackage{multirow, multicol, longtable}
\RequirePackage[
                pdfstartview=FitH,
                bookmarksnumbered=true,
                bookmarksopen=true,
                colorlinks,
                linkcolor=blue,
                anchorcolor=blue,
                citecolor=blue]
                {hyperref}

\hypersetup{unicode}



\geometry{a4paper,scale=0.7}
%\geometry{left=1in,right=1in,bottom=1.0in}
\linespread{1.5} 
\bibliographystyle{ieee}


\RequirePackage{datetime}
\newdateformat{chdate}{\THEYEAR 年\THEMONTH 月}

%\setmainfont[Mapping=tex-text]{SimSun}
\renewcommand{\abstractname}{摘要}

\renewcommand{\bibname}{参考文献}
\renewcommand{\contentsname}{目录}

\renewcommand{\figurename}{图}

\renewcommand{\tablename}{表}

%----------------------------------------

\renewcommand\chapter{\if@openright\cleardoublepage\else\clearpage\fi
	\thispagestyle{\CTEX@chapter@pagestyle}%
	\global\@topnum\z@
	\ifodd \CTEX@chapter@afterindent
	\@afterindenttrue
	\else
	\@afterindentfalse
	\fi
	\secdef\@chapter\@schapter}



\def\@chapter[#1]#2{%
	\ifnum \c@secnumdepth >\m@ne
	\ifodd \CTEX@chapter@numbering
	\refstepcounter{chapter}%
	\typeout{\CTEXthechapter}%
	\addcontentsline{toc}{chapter}
	{\protect\numberline{\CTEXthechapter\hspace{0.3em}}#1}%
	\else
	\CTEX@makeheadinganchor
	\addcontentsline{toc}{chapter}{#1}%
	\fi
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
	\fi}
\def\@makechapterhead#1{%
	%\vspace*{\glueexpr\CTEX@chapter@beforeskip\relax}%
	{\normalfont \parindent \dimexpr \CTEX@chapter@indent \relax
		\CTEX@chapter@format
		\ifnum \c@secnumdepth >\m@ne
		\ifodd \CTEX@chapter@numbering
		\CTEX@chaptername \CTEX@chapter@aftername
		\fi
		\fi
		\interlinepenalty\@M
		\CTEX@chapter@titleformat{#1}%
		\CTEX@chapter@aftertitle
		\nobreak
		\vskip \glueexpr \CTEX@chapter@afterskip \relax
	}}
	\def\@makeschapterhead#1{%
		%\vspace*{\glueexpr\CTEX@chapter@beforeskip\relax}%
		{\normalfont \parindent \dimexpr \CTEX@chapter@indent \relax
			\CTEX@chapter@format
			\interlinepenalty\@M
			\CTEX@chapter@titleformat{#1}
			\CTEX@chapter@aftertitle
			\nobreak
			\vskip \glueexpr \CTEX@chapter@afterskip \relax
		}}




\endinput




