\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{thiguka}[2024/05/24 Thiguka-related documentation]
\LoadClass[10pt,a4paper,twoside]{book}
\usepackage{hyperref}

\usepackage{fontspec}
    \setmainfont{Gentium Plus}

% \usepackage[utf8]{fontenc}
% \usepackage[utf8]{inputenc}

\usepackage{xcoffins,titling,kantlipsum}
\NewCoffin \myabstractcoffin
\newcommand \myabstract[2][.8]{%
  \SetVerticalCoffin \myabstractcoffin {#1\textwidth} {#2}%
  \renewcommand\maketitlehookd{%
    \mbox{}\medskip\par
    \centering
    \TypesetCoffin \myabstractcoffin}}

\newcommand{\headlinecolor}{\normalcolor}
\RequirePackage{xcolor}
\definecolor{slcolor}{HTML}{882B21}

\DeclareOption{onecolumn}{\OptionNotUsed}
\DeclareOption{green}{\renewcommand{\headlinecolor}{\color{green}}}
\DeclareOption{red}{\renewcommand{\headlinecolor}{\color{slcolor}}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\renewcommand{\maketitle}{%

    {\fontsize{30pt}{34pt}\selectfont{\@title}\par}

    \begin{center}
        \normalsize

        \begin{tabular}{l@{}}
            \@date
        \end{tabular}
        \hfill
        \begin{tabular}{l@{}}
            By \@author
        \end{tabular}

        \vspace{0.2cm}

        \hrule
    \end{center}
}

\newcommand{\agradj}{AGR\~{}ADJ}

\providecommand{\thigukacopyright}{
\section*{Copyright}

Thiguka is in the public domain.

This document is also in the public domain, under the terms of CC0 1.0 Universal, \\at \url{https://creativecommons.org/publicdomain/zero/1.0/}.
}

\renewcommand{\section}{%
    \@startsection
    {section}{1}{10pt}{9pt}%
    {5pt}{\fontsize{15}{18}\selectfont{\large\sffamily\slshape\headlinecolor}}%
}

\renewcommand{\normalsize}{\fontsize{12}{15}\selectfont}
\setlength{\textwidth}{17.5cm}
\setlength{\textheight}{22cm}
\setcounter{secnumdepth}{3}
