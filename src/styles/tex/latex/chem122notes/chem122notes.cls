%! Class = chem122notes
%! Author = Len Washington III
%! Date = 12/26/23

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{chem122notes}[2023/12/26 A styling package for the class: ]

\LoadClass[12pt]{report}

\RequirePackage{kvoptions}

\SetupKeyvalOptions{
	family=chemnotes,
	prefix=chemnotes@
}

\DeclareStringOption{title}
\DeclareStringOption[\today]{date}

\ProcessKeyvalOptions*

\RequirePackage{chem122}
\RequirePackage{enumitem}

\let\oldemph\emph
\renewcommand{\emph}[1]{\textcolor{red}{#1}}
\newcommand{\definition}[2]{\emph{#1} -- #2}

\setlength{\parindent}{0pt}