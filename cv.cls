\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv}

\newif\if@english
\newif\if@finnish

\DeclareOption{finnish}{\@finnishtrue}
\DeclareOption{english}{\@englishtrue}

\ProcessOptions\relax

\LoadClass{scrartcl}

\RequirePackage{fontawesome}
\RequirePackage{hyperref}
\RequirePackage{xcolor}
\RequirePackage{dashrule}
\RequirePackage{relsize}
\RequirePackage{xspace}


\definecolor{lightgray}{RGB}{211, 211, 211}
\definecolor{gray}{RGB}{105, 105, 105}

\setlength{\parindent}{0pt}


\newcommand{\Rplus}{\protect\hspace{-.1em}\protect\raisebox{.35ex}{\smaller{\smaller\textbf{+}}}}
\newcommand{\Cpp}{\mbox{C\Rplus\Rplus}\xspace}


\newcommand{\english}[1]{\if@english#1\fi}
\newcommand{\finnish}[1]{\if@finnish#1\fi}


\newcommand{\separator}{
  \vspace{3ex}
}

\newcommand{\namefont}{\huge\bfseries}
\newcommand{\name}[1]{
  {\namefont#1}
}

\newcommand{\birthday}[1]{
  \faCalendar & #1 \\
}
\newcommand{\location}[1]{
  \faMapMarker & #1 \\
}
\newcommand{\email}[1]{
  @ & \href{mailto:#1}{#1} \\
}
\newcommand{\phone}[1]{
  \faPhone & #1 \\
}
\newcommand{\github}[1]{
  \faGithub & \href{https://www.github.com/#1}{#1} \\
}
\newcommand{\linkedin}[1]{
  \faLinkedinSquare & \href{https://www.linkedin.com/in/#1}{#1} \\
}

\newcommand{\skilllang}[2]{
  #1: & #2 \\
}
\newcommand{\skillprogramming}[2]{
  \subsection*{#1}
  #2
}

\newcommand{\event}[3]{
  \textbf{#1}\hfill\par
  \textcolor{gray}{#2}\par\vspace{1ex}
  #3\par
}

