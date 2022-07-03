% !TeX TS-program = xelatex
% !BIB TS-program = bibtex
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ctlecture}[2022/07/01 v0.1 Tifa's Lecture Note Template document class]

\LoadClass[a4paper,12pt]{report}

\RequirePackage[centering,scale=0.8]{geometry}
\RequirePackage{listings}
\RequirePackage{longtable}
\RequirePackage{multirow}
\RequirePackage{multicol}
\RequirePackage{pdflscape}
\RequirePackage[titles]{tocloft}


\input{class/common.tex}


% Throrem
\newtheorem{theorem}{定理}[section]
\newtheorem{corollary}{推论}[theorem]
\newtheorem{lemma}[theorem]{引理}

\theoremstyle{definition}
\newtheorem{definition}{定义}[section]

\theoremstyle{remark}
\newtheorem*{remark}{注意}

\renewcommand\qedsymbol{$\blacksquare$}
