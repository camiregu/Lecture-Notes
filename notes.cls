% camiregu 2024-jan-09

%%% Identification
\ProvidesClass{notes}
\NeedsTeXFormat{LaTeX2e}


%%% Class options
% Inherit options of book
\DeclareOption*{
    \PassOptionsToClass{\CurrentOption}[openany, notitlepage]{book}
}
\ProcessOptions\relax
\LoadClass[openany, notitlepage]{book}


%%% 3rd party packages
% AMS Packages for environments, shortcuts, and fonts
\RequirePackage{amsthm}
\RequirePackage{amsmath}
\RequirePackage{amsfonts}
% for enumerated lists
\RequirePackage{enumitem}
% for better referencing (consider hyperref and varref)
\RequirePackage[hidelinks]{hyperref}
\RequirePackage{varioref}
\RequirePackage{cleveref}
% for pretty colors
\RequirePackage{tcolorbox}
\tcbuselibrary{most}
% for units
\RequirePackage{siunitx}
% for images and graphs
\RequirePackage{graphicx}

%%% Little formatting notes
\renewcommand{\chaptername}{Week}
\newcommand{\toccontents}{\@starttoc{toc}}
\newcommand{\frontpagewarning}{\vspace{10mm}
\begin{note}
    Theorem numbers come from the order they are presented in lecture, and do not correspond to any textbook or written course material.
\end{note}}

%%% Environment Styles
%% Define theorem style
% amsthm
\newtheoremstyle{theorem}% Name
{}{}% Space above and below
{\normalfont}{}% Body font and indent
{\bfseries}{}% Title font and punctuation
{\newline}% Space after title
{\thmname{#1}\thmnumber{ #2}\thmnote{ #3}}% Title customization
% tcolorbox
\tcolorboxenvironment{theorem}{
    unbreakable,
    enhanced jigsaw,
    colback=violet,
    opacityback = 0.05,
    opacityframe = 0,
    before skip=10pt,
    after skip=10pt
}

%% Define proposition style
% amsthm
\newtheoremstyle{proposition}% Name
{}{}% Space above and below
{\normalfont}{}% Body font and indent
{\bfseries}{}% Title font and punctuation
{\newline}% Space after title
{\thmname{#1}\thmnumber{ #2}\thmnote{ #3}}% Title customization
% tcolorbox
\tcolorboxenvironment{proposition}{
    unbreakable,
    enhanced jigsaw,
    colback=orange,
    opacityback = 0.05,
    opacityframe = 0,
    before skip=10pt,
    after skip=10pt
}
% tcolorbox
\tcolorboxenvironment{corollary}{
    unbreakable,
    enhanced jigsaw,
    colback=orange,
    opacityback = 0.05,
    opacityframe = 0,
    before skip=10pt,
    after skip=10pt
}
% tcolorbox
\tcolorboxenvironment{lemma}{
    unbreakable,
    enhanced jigsaw,
    colback=orange,
    opacityback = 0.05,
    opacityframe = 0,
    before skip=10pt,
    after skip=10pt
}

%% Define example style
% amsthm
\newtheoremstyle{definition}% Name
{}{}% Space above and below
{\normalfont}{}% Body font and indent
{\bfseries}{:}% Title font and punctuation
{\newline}% Space after title
{\thmname{#1 }\normalfont of\thmnote{ #3}}% Title customization
% tcolorbox
\tcolorboxenvironment{definition}{
    unbreakable,
    enhanced jigsaw,
    colback=cyan,
    opacityback = 0.05,
    opacityframe = 0,
    before skip=10pt,
    after skip=10pt
}

%% Define example style
\newtheoremstyle{example}% Name
{}{}% Space above and below
{\normalfont}{}% Body font and indent
{\bfseries}{:}% Title font and punctuation
{\newline}% Space after title
{\thmname{#1 }\normalfont of\thmnote{ #3}}% Title customization

%% Define remark style
\newtheoremstyle{remark}% Name
{0pt}{0pt}% Space above and below
{\normalfont}{}% Body font and indent
{\itshape}{:}% Title font and punctuation
{ }% Space after title
{\thmname{#1}\thmnote{ #3}}

%% Define proof style
% tcolorboxenvironment
\tcolorboxenvironment{proof}{
    enhanced jigsaw,
    opacityframe = 0,
    opacityback = 0.03,
    colback=black,
    leftrule=5mm,
    before skip=10pt,
    after skip=10pt,
}

%% Define question style
\tcolorboxenvironment{question}{
    unbreakable,
    enhanced jigsaw,
    opacityframe = 0,
    opacityback = 0.05,
    colback=red,
    leftrule=5mm,
    before skip=10pt,
    after skip=10pt,
    borderline west={1mm}{0pt}{red!75!black},
}

%% Define answer style
\tcolorboxenvironment{answer}{
    unbreakable,
    enhanced jigsaw,
    opacityframe = 0,
    opacityback = 0.05,
    colback=green,
    leftrule=5mm,
    before skip=10pt,
    after skip=10pt,
    borderline west={1mm}{0pt}{green!75!black},
}


%%% Environments
% Define theorem
\theoremstyle{theorem}
\newtheorem{theorem}{Theorem}[chapter]
\newtheorem*{question}{Question}
\newtheorem*{answer}{Answer}
% Define proposition and corollary
\theoremstyle{proposition}
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{lemma}[theorem]{Lemma}
% Define definition
\theoremstyle{definition}
\newtheorem*{definition}{Definition}
% Define example
\theoremstyle{example}
\newtheorem*{example}{Example}
% Define remark, recall
\theoremstyle{remark}
\newtheorem*{remark}{Remark} 
\newtheorem*{note}{Note}
\newtheorem*{recall}{Recall}

%%% Set Directory
\newcommand{\directory}[1]{\def\@directory{#1}}

%%% Shortcuts
% Common Sets
\newcommand{\R}{\mathbb{R}}
\newcommand{\Z}{\mathbb{Z}}
\newcommand{\N}{\mathbb{N}}
\newcommand{\C}{\mathbb{C}}
% Math Symbols
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
% Formatting
\newcommand{\spacebeforelist}{.\vspace{-4mm}}
% Images
\newcommand{\insertimage}[2][1]{
    \begin{figure}[!htbp]
    \centering
    \includegraphics[scale=#1]{\Experiment/Images/#2.png}
    \end{figure}
}

%TODO
% model environment
% easy images (directory)