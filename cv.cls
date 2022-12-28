\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{cv}
\LoadClass{scrartcl}

\RequirePackage{fontawesome}
\RequirePackage{hyperref}


\setlength{\parindent}{0pt}

\newcommand{\separator}{
  \vspace{1cm}
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
  #1: #2
  \par
}

\newcommand{\event}[3]{
  \textbf{#1}\hfill#2 \\
  #3
  \par
}

