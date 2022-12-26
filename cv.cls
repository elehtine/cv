\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv}
\LoadClass{scrartcl}


\setlength{\parindent}{0pt}

\newcommand{\sidesep}{
  \vspace{1cm}
}

\newcommand{\namefont}{\huge\bfseries}
\newcommand{\name}[1]{
  {\namefont#1}
}

\newcommand{\skilllang}[2]{
  {#1: #2}
  \par
}

\newenvironment{event}{
  \begin{tabular}{r|p{.5\textwidth}}
    }{
  \end{tabular}
}

\newcommand{\eventitem}[3]{
  #1 & \textbf{#2}\newline{#3} \\
}

