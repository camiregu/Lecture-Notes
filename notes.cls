% camiregu 2024-jan-09

%%% Identification
\ProvidesClass{notes}
\NeedsTeXFormat{LaTeX2e}


%%% Class options
% Inherit options of book
\DeclareOption*{
    \PassOptionsToClass{\CurrentOption}{book}
}
\ProcessOptions\relax
\LoadClass{book}


%%% 3rd party packages
% AMS Packages for environments, shortcuts, and fonts
\RequirePackage{amsthm}
\RequirePackage{amsmath}
\RequirePackage{amsfonts}
% for enumerated lists
\RequirePackage{enumitem}
% for better referencing (consider hyperref and varref)
\RequirePackage{cleveref}
% for pretty colors
\RequirePackage{tcolorbox}
\tcbuselibrary{most}

%%% Change "Chapter" to "Week"
\renewcommand{\chaptername}{Week}

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
    %blanker,
    enhanced jigsaw,
    %interior hidden,
    colframe=white,
    colback=violet!5!white,
    unbreakable,
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
    %blanker,
    enhanced jigsaw,
    %interior hidden,
    colframe=white,
    colback=orange!5!white,
    unbreakable,
    before skip=10pt,
    after skip=10pt
}
% tcolorbox
\tcolorboxenvironment{corollary}{
    blanker,
    enhanced jigsaw,
    %interior hidden,
    colframe=white,
    colback=orange!5!white,
    unbreakable,
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
    %blanker,
    enhanced jigsaw,
    %interior hidden,
    colframe=white,
    colback=cyan!5!white,
    unbreakable,
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
{}

%% Define proof style
% tcolorboxenvironment
\tcolorboxenvironment{proof}{
    blanker,
    enhanced jigsaw,
    colback=gray!10!white,
    unbreakable,
    left=5mm,
    before skip=10pt,
    after skip=10pt,
    borderline west={1mm}{0pt}{gray}
}

%%% Environments
% Define theorem
\theoremstyle{theorem}
\newtheorem{theorem}{Theorem}[chapter]
% Define proposition and corollary
\theoremstyle{proposition}
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem{corollary}[theorem]{Corollary}
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

%%% Shortcuts
\newcommand{\R}{\mathbb{R}}
\newcommand{\Z}{\mathbb{Z}}
\newcommand{\inv}{^{-1}}
\newcommand{\spacebeforelist}{.\vspace{-4mm}}