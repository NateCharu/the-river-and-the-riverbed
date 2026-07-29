%=============================================================================
% daothesis.cls — The River and the Riverbed
% A Daoist thesis class for the age of antifragile systems
%=============================================================================
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{daothesis}[2026/07/29 v1.0 Dao of Discovery Thesis Class]

% --- Base class: report with chapters ---
\LoadClass[12pt,oneside,a4paper]{report}

% --- Essential packages ---
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{geometry}
\geometry{margin=1in, bottom=1.2in}
\RequirePackage{setspace}
\onehalfspacing
\RequirePackage{graphicx}
\RequirePackage{xcolor}
\RequirePackage{titlesec}
\RequirePackage{fancyhdr}
\RequirePackage{epigraph}
\RequirePackage{marginnote}
\RequirePackage{booktabs}
\RequirePackage{amsmath,amssymb}
\RequirePackage[backend=biber,style=verbose-ibid]{biblatex}
\RequirePackage{hyperref}
\hypersetup{
  colorlinks=true,
  linkcolor=blue!60!black,
  citecolor=teal,
  urlcolor=purple!60!black,
  pdftitle={The River and the Riverbed},
  pdfauthor={The Scholar of Systems}
}
\RequirePackage{tikz}
\usetikzlibrary{shapes,arrows,positioning,decorations.pathmorphing}
\RequirePackage{listings}
\lstset{
  basicstyle=\ttfamily\footnotesize,
  breaklines=true,
  frame=single,
  backgroundcolor=\color{gray!5}
}
\RequirePackage[style=english]{csquotes}

% --- Colors from the three traditions ---
\definecolor{daoGreen}{HTML}{2D5A27}      % bamboo green — the Tao
\definecolor{tolkienGold}{HTML}{C9A84C}   % golden hall — Middle-earth
\definecolor{deepBlue}{HTML}{1A3A5C}      % deep water — the unconscious
\definecolor{inkBlack}{HTML}{1A1A1A}
\definecolor{parchment}{HTML}{F5F0E8}

% --- Chapter style: gateways, not mere sections ---
\titleformat{\chapter}[display]
  {\normalfont\Huge\bfseries\color{daoGreen}}
  {\filleft\Large\textsc{Gate \thechapter}}
  {0pt}
  {\filcenter\Huge}
  [\vspace{0.3ex}\rule{\textwidth}{0.5pt}]

\titlespacing*{\chapter}{0pt}{-20pt}{40pt}

% --- Section style ---
\titleformat{\section}
  {\normalfont\Large\bfseries\color{deepBlue}}
  {\thesection}{1em}{}

% --- Epigraph style ---
\setlength{\epigraphwidth}{0.65\textwidth}
\renewcommand{\epigraphflush}{flushright}
\renewcommand{\epigraphsize}{\footnotesize\itshape}
\setlength{\epigraphrule}{0pt}

% --- Header/footer ---
\pagestyle{fancy}
\fancyhf{}
\fancyhead[LE,RO]{\thepage}
\fancyhead[LO]{\itshape\nouppercase\leftmark}
\fancyhead[RE]{\itshape\nouppercase\leftmark}
\renewcommand{\headrulewidth}{0.3pt}

% --- Special commands for the three voices ---
\newcommand{\dao}[1]{%
  {\color{daoGreen}\small\itshape\sffamily
   \marginnote{\textbf{Dao:} #1}[\baselineskip]}}

\newcommand{\tolkien}[1]{%
  {\color{tolkienGold}\small\scshape
   \marginnote{\textbf{Lore:} #1}[\baselineskip]}}

\newcommand{\finding}[1]{%
  \vspace{1em}
  \noindent\textcolor{deepBlue}{\rule{0.25\textwidth}{0.5pt}}\par
  \noindent{\small\itshape\color{deepBlue}Finding: #1}\par
  \vspace{0.5em}}

% --- End of class ---
\endinput
