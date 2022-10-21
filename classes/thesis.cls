% The latest stable release of LaTeX
\NeedsTeXFormat{LaTeX2e}

% Class name
\ProvidesClass{thesis}[2020/07/01
                       v1.1.0
                       IPT Template (Marcelo Nascimento)]

% Load class name with the listed options
\LoadClass[12pt]{report}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                     AREA FOR PACKAGES                     %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Aims to solve the error "No room for a new \write"
\RequirePackage{morewrites}

% Interface to document dimensions
\RequirePackage[a4paper,lmargin=3cm,tmargin=3cm,rmargin=2cm,bmargin=2cm]{geometry}

% Improve justification
\RequirePackage{microtype}

% Multilingual support
\RequirePackage[brazilian]{babel}

% Fonts
\RequirePackage{fontspec}

% Fix footnote position at the bottom of the page
\RequirePackage[bottom]{footmisc}

% Provides commands to change the page layout in the middle of a document
\RequirePackage{changepage}

% Provides control over the typography of the Table of Contents, List of Figures and List of Tables, and the ability to create new 'List of ...'
\RequirePackage{tocloft}

% Acronym
\RequirePackage[printonlyused]{acronym}

% A list of symbols
\RequirePackage[portuguese,notintoc]{nomencl}

% Bibliographic facilities
% https://github.com/abntex/biblatex-abnt
% https://github.com/abntex/biblatex-abnt/issues/90
\RequirePackage[backend=biber,style=abnt,sorting=nyt,language=brazil]{biblatex}

% Advanced facilities for in-line and display quotations
% Package load recommended by biblatex
\RequirePackage{csquotes}

% Appendix
\RequirePackage[titletoc,title]{appendix}

% For the index 
\RequirePackage{imakeidx}

% Select alternative section titles
\RequirePackage{titlesec}

% Change line spacing in all of document
\RequirePackage[onehalfspacing,nodisplayskipstretch]{setspace}

% Indent the first paragraph after a section tag
\RequirePackage{indentfirst}

% Paragraph indent and space
\RequirePackage[indent=1.25cm]{parskip}

% Make links clickable
\RequirePackage[hidelinks]{hyperref}

% Glossary
% Must be after hyperref package
\RequirePackage[toc]{glossaries}

% Manage images
\RequirePackage{graphicx}

% Places the float at precisely the location for images
\RequirePackage{float}

% Formatting figure and table captions
\RequirePackage[labelsep=endash,labelfont=bf]{caption}

% Extension of tabular which has an additional column designator
\RequirePackage{tabularx}

% Provides macros manipulating strings
\RequirePackage{xstring}

% Commands for formatting dates, times
\RequirePackage[portuges]{datetime2}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                 EDIT BELOW THIS LINE                      %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Thesis title - brazilian
\newcommand{\doctitlebrazilian}{[Título da Dissertação]}

% Thesis title - english
\newcommand{\doctitle}{[Thesis Title]}

% Thesis author
\newcommand{\authorname}{[Author name]}

% Main supervisor
\newcommand{\supervisor}{[Supervisor's Name]}
\newcommand{\supervisortitle}{[Academic degree]}

% Co-supervisor. If you have only one supervisor, leave it as it is
\newcommand{\cosupervisor}{[Co-Supervisor's Name]}
\newcommand{\cosupervisortitle}{[Academic degree]}

% Knowledge area
\newcommand{\knowledgearea}{[Knowledge area]}

% Keywords for abstract in English
\newcommand{\keywords}{Important, comma, separated, keywords, applicable, to, your, thesis, in, english}

% Keywords for abstract in Portuguese
\newcommand{\palavraschave}{Palavras, chaves, separadas, por, virgula, aplicada, a, sua, dissertação}

% Month of the publication (defaults to current month).
% You can hard code the value by replacing the parameter with a text
\newcommand{\thesismonth}{MMM.}

% Year of the publication (Four Digits).
% You can hard code the value by replacing the parameter with a text
\newcommand{\thesisyear}{AAAA}

% Name of list of figure (lof)
\newcommand{\lofname}{Lista de Figuras}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CAUTION!                                                  %
% BE CAREFUL TO EDIT THIS LINES BELOW                       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% IPT
\newcommand{\ipt}{IPT}

% University
\newcommand{\university}{Instituto de Pesquisas Tecnológicas do Estado de São Paulo}

% IPT State
\newcommand{\state}{São Paulo}

% Full university name
\newcommand{\universityfull}{\university\space--\space\ipt}

% Signature date
\newcommand{\signaturedate}{\textunderscore\textunderscore\textunderscore\textunderscore\textunderscore\slash\textunderscore\textunderscore\textunderscore\textunderscore\textunderscore\slash\textunderscore\textunderscore\textunderscore\textunderscore\textunderscore\textunderscore}

% Source for Figures, Tables, etc
\newcommand{\objectsourceauthor}{Elaborado pelo autor.}
\newcommand{\objectsource}[1]{
  \break\textbf{Fonte:\space}#1
}

% Quote for more than three lines
\newcommand{\quotebox}[1]{
  \hfill\begin{minipage}{\dimexpr\textwidth-4cm}
  \small #1
  \end{minipage}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                     LIST OF BOARDS                        %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\listboardname}{List of Boards}
\newlistof{boards}{lob}{\listboardname}
\newcommand{\board}[1] {
  \refstepcounter{boards}
  \par\noindent\textbf{Quadro \theboards\space--\space}#1
  \addcontentsline{lob}{boards}
  {\protect\numberline{\theboards}#1}\par
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CAUTION!                                                  %
% EDIT LINES BELOW ONLY IF YOU WANT TO CHANGE THE TEMPLATE  %
% CONFIGURATION.                                            %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Default main font
\setmainfont{Arial}

% No special font is set and the current font is used for the URLs
\urlstyle{same}

% Path for figures / images
\graphicspath{{./figures/}}

% Set page style of the ToC, LoF and/or LoT
\tocloftpagestyle{empty}

% Removes the link between 'figure' and 'chapter'
\counterwithout{figure}{chapter}

% Removes the link between 'table' and 'chapter'
\counterwithout{table}{chapter}

% Control the depth of the table of contents
\setcounter{tocdepth}{3}

% Control which sectioning unit are numbered
\setcounter{secnumdepth}{3}

% For the generation of the nomenclature
\makenomenclature

% Mandatory for the index to work
\makeindex[title=\'{I}NDICE,columns=2,options= -s ./index/example_style.ist,intoc]

% Import the bibliography file
\addbibresource{./references/references.bib}

% Strip diacritics when sorting names
\DeclareNosort{
  \nosort{type_names}{\regexp{[\x{2bf}\x{2018}]}}
}

% Strip diacritics when generating initials from names
\DeclareNoinit{
  \noinit{\regexp{[\x{2bf}\x{2018}]}}
}

% Command must be written before the first glossary entry
\makeglossaries

% Path for glossary definitions
\loadglsentries{./posttextual/glossaries}

% Displays the page number on top of the page in the outer corner
\assignpagestyle{\chapter}{myheadings}

% Redefining a macro to remove the page number in the symbol list.
\renewcommand{\nompreamble}{\thispagestyle{empty}}

% Changes font for acronym (bold removed)
\renewcommand*{\acsfont}[1]{\normalfont #1}

% Space between name and year in reference
\renewcommand{\nameyeardelim}{\addcomma\space}

% Add lines of dots for parts, chapters, sections and etc in table of content
\renewcommand{\cftpartleader}{\cftdotfill{\cftdotsep}}
\renewcommand{\cftchapleader}{\cftdotfill{\cftdotsep}}
\renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}}

% More space
\renewcommand{\cftfigpresnum}{Figura\ }
\addtolength{\cftfignumwidth}{30pt}

% More space
\renewcommand{\cfttabpresnum}{Tabela\ }
\addtolength{\cfttabnumwidth}{30pt}

% More space
\renewcommand{\cftboardspresnum}{Quadro\ }
\addtolength{\cftboardsnumwidth}{40pt}

% Adjust titles for TOC, LOF, LOT, APPENDIX 
\addto\captionsbrazilian{
    \renewcommand{\listfigurename}{\lofname}
    \renewcommand{\cftloftitlefont}{\hfil\bfseries\normalsize}

    \renewcommand{\listtablename}{Lista de Tabelas}
    \renewcommand{\cftlottitlefont}{\hfil\bfseries\normalsize}
    \renewcommand{\cftdot}{.}

    \renewcommand{\listboardname}{Lista de Quadros}
    \renewcommand{\cftlobtitlefont}{\hfil\bfseries\normalsize}

    \renewcommand{\nomname}{\hfil Lista de S\'{i}mbolos}

    \renewcommand{\contentsname}{SUM\'{A}RIO}
    \renewcommand{\cfttoctitlefont}{\hfil\bfseries\normalsize}

    \renewcommand{\appendixname}{AP\^{E}NDICE}
}

% Remove indent for \section
\setlength{\cftsecindent}{0pt}

% Remove indent for \subsection
\setlength{\cftsubsecindent}{0pt}

% Remove indent for \subsubsection
\setlength{\cftsubsubsecindent}{0pt}

% Remove spaces for LOF: Listing of Figures
\setlength{\cftbeforeloftitleskip}{0pt}
\setlength{\cftafterloftitleskip}{1.5ex}

% Remove spaces for TOC: Table of Contents
\setlength{\cftbeforetoctitleskip}{0pt}
\setlength{\cftaftertoctitleskip}{0pt}

% Remove spaces for LOT: Listing of Tables
\setlength{\cftbeforelottitleskip}{0pt}
\setlength{\cftafterlottitleskip}{1.5ex}

% Adjust spaces for LOB: Listing of Boards
\setlength{\cftbeforelobtitleskip}{0pt}
\setlength{\cftafterlobtitleskip}{1.5ex}

% Title formatting
\titleformat{\chapter}{\normalfont\normalsize\bfseries}{\thechapter}{1em}{}
\titleformat{\section}{\normalfont\normalsize}{\thesection}{1em}{}[]
\titleformat{\subsection}{\normalfont\normalsize}{\thesubsection}{1em}{}[]
\titleformat{\subsubsection}{\normalfont\normalsize}{\thesubsubsection}{1em}{}[]

% Setting the spacing before and after the section titles
\titlespacing*{\chapter}{0pt}{0pt}{1.5ex}
\titlespacing*{\section}{0pt}{1.5ex}{1.5ex}
\titlespacing*{\subsection}{0pt}{1.5ex}{1.5ex}
\titlespacing*{\subsubsection}{0pt}{1.5ex}{1.5ex}

% Does not generate warnings for Overfull < 1pt
\hfuzz=1pt
\vfuzz\hfuzz

% Does not generate warnings for Underfull with badness < 1000
\hbadness=1000
\vbadness=1000

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                     ENVIRONMENTS                          %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Dedication page
\newenvironment{dedication}{
  \begin{center}
    \textbf{DEDICATÓRIA}
  \end{center}
  \par
}

% Acknowledgments page
\newenvironment{acknowledgments}{
  \begin{center}
    \textbf{AGRADECIMENTOS}
  \end{center}
  \par
}

% Abstract (pt) page
\newenvironment{abstractpt}{
  \begin{center}
    \textbf{RESUMO}
  \end{center}
  \par
}
{\newline\newline\noindent\textbf{Palavras-chave}: \palavraschave}

% Abstract (en) page
\newenvironment{abstracten}{
  \begin{center}
    \textbf{ABSTRACT}
    \par \textbf{\doctitle}
  \end{center}
  \par
}
{\newline\newline\noindent\textbf{Keywords}: \keywords}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                     PDF SETTINGS                          %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\hypersetup{
    pdfauthor={\authorname},
    pdftitle={\doctitle},
    pdfcreator={Template IPT},
    pdfproducer={Template IPT},
    pdfsubject={\doctitle},
    pdfkeywords={\palavraschave},
    pdfpagemode=FullScreen,
}
