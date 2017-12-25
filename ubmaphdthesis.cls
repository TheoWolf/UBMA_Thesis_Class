\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ubmaphdthesis}[2017/12/24 UBMA PhD Thesis LaTeX class]

%% Report options
\DeclareOption{12pt}{
	\PassOptionsToClass{\CurrentOption}{report}
}

\DeclareOption{T1}{
	\PassOptionsToPackage{\CurrentOption}{fontenc}
}

% Pass Option to the report class
\DeclareOption*{
	\PassOptionsToClass{\CurrentOption}{report}
}

%% Fallback
\DeclareOption*{
	\ClassWarning{ubmaphdthesis}{Unknown option '\CurrentOption'}
}

%% Execute default options
\ExecuteOptions{12pt}

%% Process given options
\ProcessOptions\relax

%% Load base
\LoadClass[a4paper]{report}

\RequirePackage[main = francais,english]{babel}
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{geometry}
\geometry{
% Uncomment the left and right geometry margin
% if needed instead of width
%	left={15mm},
%	right={15mm},
	width={150mm},
	headheight={12pt},
	top={25mm},
	bottom={25mm},
}

% For math equations
\usepackage{mathptmx}
\usepackage{amsmath}

%for arabic not working yet
%\usepackage{arabtex}

% to draw graphs
\usepackage{graphicx}

%for the table
\usepackage{multirow}
\usepackage{tabularx}

%for subfigure
\usepackage{subcaption}

%Footer and header
\usepackage{fancyhdr}
\pagestyle{fancy}
\fancyhead{}
\fancyhead[LO,RE]{\footnotesize\nouppercase\leftmark}


\usepackage{setspace}
%\setstretch{1.5}
%\spacing{1.5}
%\linespread{1.25}

\usepackage{calc}

%If you would like to use floating figure {H}
\usepackage{float}

%to add pdf as input
\usepackage{pdfpages}
\setboolean{@twoside}{false}

\usepackage{tikz,pgfplots}
%\usepgfplotslibrary{dateplot}

\usetikzlibrary{patterns}
%\pgfplotsset{compat=1.3}

%to align chapter on the left
\usepackage{sectsty}
\chapterfont{\raggedleft}

% for landscpae pages
\usepackage{pdflscape}

%Abbrevation
\usepackage[acronym]{glossaries}
%%Bibtex Style
%\usepackage{biblatex}
%\addbibresource{./Bib/Thesis.bib}

\usepackage{titlesec}
\titlespacing*{\section}{0pt}{\baselineskip}{\baselineskip}
\titlespacing*{\subsection}{0pt}{\baselineskip}{\baselineskip}
\titlespacing*{\subsubsection}{0pt}{\baselineskip}{\baselineskip}

%This is the link in the table of contents
%\usepackage[linktoc=all]{hyperref}
%\usepackage{titlesec}
%\hypersetup{
%    colorlinks,
%    citecolor=black,
%    filecolor=black,
%    linkcolor=black,
%    urlcolor=black
%}

%The depth of the title in the text
\setcounter{secnumdepth}{5}
% Toc depth in the contents
\setcounter{tocdepth}{3}

%To have Tableau instead of Table
\addto\captionsfrench{\def\tablename{Tableau}}
\addto\captionsfrench{\def\figurename{Figure}}

\renewcommand{\maketitle}{
	\thispagestyle{empty}
	\pagestyle{empty}
	\newgeometry{margin=2mm}
	\begin{tikzpicture}	
		\draw[black, line width = 3.6pt] (2mm,2mm) rectangle (195mm,\textheight);
		\draw[black, thick] (3mm,3mm) rectangle (194mm,\textheight-1mm);
	\end{tikzpicture}
	\restoregeometry
}

\endinput
