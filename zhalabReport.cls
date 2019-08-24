\NeedsTeXFormat{LaTeX2e}[2007/10/19]
\ProvidesClass{zhalabReport}
	[2015/02/10 v1.0 beta1 Notes Template]


\LoadClass[a4paper,11pt,UTF8,zihao = -4]{ctexrep}
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



\geometry{a4paper,scale=0.8}
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



\endinput
