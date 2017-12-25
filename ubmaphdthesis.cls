\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ubmaphdthesis}[2017/12/24 UBMA PhD Thesis LaTeX class]

%% Report options
\DeclareOption{12pt}{
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

%\RequirePackage{babel}
\RequirePackage{inputenc}
\RequirePackage{fontenc}
\RequirePackage{geometry}
\geometry{
%	left={15mm},
%	right={15mm},
	width={150mm},
	headheight={12pt},
	top={25mm},
	bottom={25mm},
}

%% Additional TeX/LaTeX code...

\endinput
