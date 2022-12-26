\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv}
\LoadClass{scrartcl}


\setlength{\parindent}{0pt}

\newcommand{\separator}{
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

\newcommand{\event}[3]{
  \textbf{#1}\hfill#2 \\
  #3
  \par\separator
}

