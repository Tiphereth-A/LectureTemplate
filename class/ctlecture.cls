% !TeX TS-program = xelatex
% !BIB TS-program = bibtex
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ctlecture}[2022/07/01 v0.1 Tifa's Lecture Note Template document class]

\LoadClass[a4paper,12pt]{report}

\RequirePackage{algorithm}
\RequirePackage{algpseudocode}
\RequirePackage{amsfonts}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage{bm}
\RequirePackage{bigdelim}
\RequirePackage{bigstrut}
\RequirePackage{booktabs}
\RequirePackage[scale=2]{ccicons}
\RequirePackage{cprotect}
\RequirePackage[UTF8]{ctex}
\RequirePackage{fancyhdr}
\RequirePackage{hyperref}
\RequirePackage[centering,scale=0.8]{geometry}
\RequirePackage{listings}
\RequirePackage{longtable}
\RequirePackage{multirow}
\RequirePackage{multicol}
\RequirePackage{pdflscape}
\RequirePackage{subcaption}
\RequirePackage{tabularx}
\RequirePackage{tikz}
\RequirePackage[titles]{tocloft}
\RequirePackage{url}
\RequirePackage{xcolor}
\RequirePackage{xspace}

\RequirePackage{pgfplots}
\usepgfplotslibrary{dateplot}


% Font setting
\RequirePackage{eulervm}
\RequirePackage{fontspec}
\setsansfont{Fira Sans}
\setmonofont{Fira Code}[Contextuals=Alternate]


\newcommand{\imgdir}{image/}


% Throrem
\newtheorem{theorem}{定理}[section]
\newtheorem{corollary}{推论}[theorem]
\newtheorem{lemma}[theorem]{引理}

\theoremstyle{definition}
\newtheorem{definition}{定义}[section]

\theoremstyle{remark}
\newtheorem*{remark}{注意}

\renewcommand\qedsymbol{$\blacksquare$}

% User defined math command
\newcommand{\lcm}{\operatorname{lcm}}
\newcommand{\nequiv}{~{\equiv}\llap{/\,}~}
\newcommand{\subjectto}{~s.t.~}


% Code style
\RequirePackage{listings}
\RequirePackage{lstfiracode}
\lstdefinestyle{common}{
    style=FiraCodeStyle,
    belowcaptionskip=1\baselineskip,
    breaklines=true,
    xleftmargin=\parindent,
    showstringspaces=true,
    numbers=left,
    numberstyle=\ttfamily\small,
    basicstyle=\ttfamily,
    stepnumber=1,
    frame=single
}

\lstdefinestyle{c++}{
    style=common,
    language=C++,
    keywordstyle=\bfseries\color{green!40!black},
    commentstyle=\itshape\color{red!80!black},
    identifierstyle=\color{blue},
    stringstyle=\color{purple!40!black},
}

\lstdefinestyle{c}{
    style=common,
    language=C,
    keywordstyle=\bfseries\color{green!40!black},
    commentstyle=\itshape\color{red!80!black},
    identifierstyle=\color{blue},
    stringstyle=\color{purple!40!black},
}

\newcommand{\includecode}[3][c++]{
    \vspace{0.3cm}
    \lstset{style=#1}
    \lstinputlisting[label={code:#2}]{code/#2.#3}
    \vspace{0.3cm}
}


% Bib
\newcommand{\listofbib}{
    \nocite{*}
    \bibliographystyle{plain}
    \bibliography{references}
}