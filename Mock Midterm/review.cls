% camiregu 2024-jan-27
%%% Identification
\ProvidesClass{review}
\NeedsTeXFormat{LaTeX2e}


%%% Class options
% Inherit options of article
\DeclareOption*{
    \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}


%%% 3rd party packages
% for cooler commands
\RequirePackage{xparse}
% AMS Packages for environments, shortcuts, and fonts
\RequirePackage{amsthm}
\RequirePackage{amsmath}
\RequirePackage{amsfonts}
% for enumerated lists
\RequirePackage{enumitem}
% for better referencing (consider hyperref and varref)
\RequirePackage[hidelinks]{hyperref}
% for pretty colors
\RequirePackage{tcolorbox}
\tcbuselibrary{most}
% for page formatting
\RequirePackage{geometry}
\RequirePackage{multicol}
\RequirePackage{titling}
\RequirePackage{titlesec}


%%% Document Settings
\newcommand{\numcols}[1]{\def\@numcols{#1}}
\newcommand{\forprint}{
    \setlength{\droptitle}{-3cm}
    \renewcommand{\tableofcontents}{}
    \preauthor{}\postauthor{}\author{} 
    \predate{}\postdate{}\date{}

    \newcommand{\solutionspace}{4cm}
    \titlelabel{}
}
\newcommand{\fordigital}{
    \newcommand{\solutionspace}{0pt}
    \titlelabel{}
}
\newcounter{question}[section]


%%% Elements of Review Sheet
% Usage: \definition{<title>}{<description>}
\newcommand{\definition}[2]{
    \item \textbf{#1}

    #2
}
% Usage: \theorem[<title>]{<description>}
\newcommand{\theorem}[2][Theorem]{
    \item \textbf{#1}

    #2
}
% Usage: \proposition[<title>]{<description>}
\newcommand{\proposition}[2][Proposition]{
    \item \textbf{#1}

    #2
}
% Usage: \lemma[<title>]{<description>}
\newcommand{\lemma}[2][Lemma]{
    \item \textbf{#1}

    #2
}
% Usage: \corollary[<title>]{<description>}
\newcommand{\corollary}[2][Corollary]{
    \item \textbf{#1}

    #2
}
% Usage: \question[<citation>]{<description>}
\newcommand{\question}[2][]{
    \stepcounter{question}
    \item[\thequestion.] \textbf{#1}. #2

    \vspace{\solutionspace}
}


%%% Environment Styles
%% Define emphasis style
\newenvironment{emphasize}{}{}
\tcolorboxenvironment{emphasize}{
    unbreakable,
    enhanced jigsaw,
    colback=red,
    opacityback = 0.05,
    opacityframe = 0,
    before skip=10pt,
    after skip=10pt
}


%%% Easy setup
\let\ogmulticols\multicols
\let\endogmulticols\endmulticols
\RenewDocumentEnvironment{multicols}{mO{}}{%
    \ifnum#1=1
        #2%
    \else
        \ogmulticols{#1}[#2]
    \fi
}{%
    \ifnum#1=1
    \else
        \endogmulticols
    \fi
}

\newcommand{\includeweeks}[1]{
\foreach \i in {#1} {%
    \section{Week \i}
    \foreach \filename in {Definitions, Theorems}{%
        \IfFileExists{Week \i/\filename}{%
            \begin{multicols}{\@numcols}[\subsection{\filename}]
            \input{Week \i/\filename}
            \end{multicols}
            }
        }
    \newpage
    \foreach \filename in {Computations, Proofs}{%
        \IfFileExists{Week \i/\filename}{%
            \subsection{\filename}
            \input{Week \i/\filename}
            }
        }
    }
}

%%% Shortcuts
% Common Sets
\newcommand{\R}{\mathbb{R}}
\newcommand{\Rn}{\mathbb{R}^n}
\newcommand{\Rm}{\mathbb{R}^m}
\newcommand{\Z}{\mathbb{Z}}
\newcommand{\N}{\mathbb{N}}
\newcommand{\C}{\mathbb{C}}
\newcommand{\Q}{\mathbb{Q}}
% Math Symbols
\newcommand{\sub}{\subseteq}
\newcommand{\inv}{^{-1}}
\newcommand{\grad}{\nabla}
\DeclareMathOperator{\Lapl}{\mathcal{L}}
\newcommand{\eval}[1]{\left.#1\right|}
\newcommand{\restr}{\vert}
\newcommand{\divides}{\mid}
\newcommand{\ord}[1]{\left|#1\right|}
\newcommand{\set}[1]{\left\{#1\right\}}
\newcommand{\of}[1]{\left(#1\right)}
\newcommand{\norm}[1]{\lVert#1\rVert}
\DeclareMathOperator{\lcm}{lcm}