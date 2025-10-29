% Set font size and paper type
\LoadClass[12pt,a4paper]{article}

% Enable custom colors
\RequirePackage[usenames,dvipsnames]{xcolor}
\RequirePackage{enumitem}

% Remove paragraph indentation
\RequirePackage[parfill]{parskip}

% Enable boldface for tabular columns
\RequirePackage{array}

% Enable if-then-else statements
\RequirePackage{ifthen}

% Suppress page numbers
\pagestyle{empty}

% Create a custom bullet point symbol
\RequirePackage{scalerel}
\RequirePackage{bbding,pifont}

% Define navy blue color for section headings and lines
\definecolor{accent}{RGB}{0,54,200}

\newcommand{\header}[1]{\color{accent}\textbf{#1}}

% Section environment
\newenvironment{Section}[1]{
    \raggedbottom
    \vspace{0.1cm}
    {\header{#1}}
    \vspace{0.1cm}
    {\color{accent}\hline}
    }{}

\newlist{tabitemize}{itemize}{1}
\setlist[tabitemize]{label=\textbullet, nosep, leftmargin=*}

%----------------------------------------------------------------------------------------
% Education
%----------------------------------------------------------------------------------------
\newcommand{\education}[6]{
    \begin{tabular}{@{}p{0.215\textwidth}p{0.75\textwidth}@{}}
        #1 -- #2
        &
        \textbf{#3}
        \item #4
        \item #5 \hspace{0.25cm} CGPA: #6
    \end{tabular}
}
%----------------------------------------------------------------------------------------
% Work Experience
%----------------------------------------------------------------------------------------
\newcommand{\workplace}[8]{
    \begin{tabular}{@{}p{0.215\textwidth}p{0.75\textwidth}@{}}
        #1 -- #2 \newline (#3)
        &
        \textbf{#4, #5} - #6
        \begin{tabitemize}
            \item #7
            \item #8
        \end{tabitemize}
    \end{tabular}
    \vspace{-0.4cm}
}
\newcommand{\workplaceSingleDate}[7]{
    \begin{tabular}{@{}p{0.215\textwidth}p{0.75\textwidth}@{}}
        #1 \newline (#2)
        &
        \textbf{#3, #4} - #5
        \begin{tabitemize}
            \item #6
            \item #7
        \end{tabitemize}
    \end{tabular}
    \vspace{-0.4cm}
}
%----------------------------------------------------------------------------------------
% Define tag command for formatting tags
%----------------------------------------------------------------------------------------
\newcommand{\tag}[1]{\textcolor{accent}{\textbf{#1:}}}

\newcommand{\info}[1]{\textcolor{black}{#1}}

\newcommand{\personalInfo}[1]{
    \centerline{#1}\par
}

\newcommand{\size}[2]{{\fontsize{#1}{0}\selectfont#2}}

\RequirePackage{hyperref}
\hypersetup{
    colorlinks=true,
    linkcolor=blue,
    urlcolor=cyan,
}
\newcommand{\link}[3]{\href{#1}{\textcolor{#3}{#2}}}