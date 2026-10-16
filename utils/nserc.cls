% This headers aims to conform to the NSERC formatting requirements for attachments for the Discovery grant
%
% RESEARCH PORTAL PRESENTATION AND ATTACHMENT STANDARDS
	% Prepare your attachments in any word processing program, following
	% the requirements below. All text, including references (where applicable),
	% must conform to these standards.
	%
	%    Acronyms and abbreviations must be spelled out completely on initial appearance in text;
	%    Pages must be 8 ½" x 11" (216mm x 279mm);
	%    Pages must be single-spaced, with no more than six lines of type per inch;
	%    All text must be in 12 pt. Times New Roman font;
	%    Condensed fonts will not be accepted;
	%    Colour imagery is acceptable* but the text should be in black;  
	%    All margins must be set at a minimum of ¾" (1.87 cm);
	%    Do not introduce hyperlinks in your documents;
	%    If you have supporting documents written in a language other than
	%    English or French, you are required to provide a certified translation of
	%    the document.

	%  Applicants who decide to use colour imagery should be aware that the
	%  application may not be reviewed in colour. Use of colour increases the file
	%  size of your application, and may lengthen download and upload times. 
% http://www.nserc-crsng.gc.ca/ResearchPortal-PortailDeRecherche/standards_eng.asp

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{nserc}

% SORT THROUGH OPTIONS
\RequirePackage{etoolbox}
\newbool{draft}
\boolfalse{draft}
\newbool{compact}
\boolfalse{compact}

\DeclareOption{draft}{\booltrue{draft}}
\DeclareOption{compact}{\booltrue{compact}}
\ProcessOptions\relax

\ifbool{draft}{
	\LoadClass[12pt,letterpaper,draft]{article}
}{
	\LoadClass[12pt,letterpaper]{article}
}
\RequirePackage[colorinlistoftodos,obeyDraft]{todonotes}

% MANDATORY FONTS
\RequirePackage{fontspec}
\setmainfont{TimesNewRoman.ttf}[BoldFont = TimesNewRomanBold.ttf,
				ItalicFont = TimesNewRomanItalic.ttf]


% FOOTNOTES
% also with 12pt font just to be safe
% using letters to not conflict with citations
\renewcommand{\thefootnote}{\alph{footnote}}
\renewcommand{\footnotesize}{\fontsize{12pt}{12pt}\selectfont}

% Figures
\RequirePackage{wrapfig}
\setlength\intextsep{0pt} % Reduce excessive white space after wrapped figures

% Convenience and readability: markdown writing and abbreviations
\RequirePackage[footnotes,definitionLists,hashEnumerators,smartEllipses,hybrid]{markdown}
\newcommand{\ci}[1]{\autocite{#1}}

% bibliography
\RequirePackage{multicol}
\RequirePackage[backend=biber,
            style=nature,
	    %url=true,
	    isbn=false,
    	    doi=false,
            autocite=superscript,
	    autopunct=true,
            maxnames=2, minnames=1]{biblatex}
\setlength{\biblabelsep}{0.1cm} % horizontal distance between biblabel number and entry


%% Apply draft and final formatting
\ifbool{draft}{
	% space for comments
	\setlength{\marginparwidth}{4cm}
	\linespread{1.5}
}{%else:
	% Minimum margins
	\RequirePackage[left=1.9cm, right=1.9cm, top=1.9cm, bottom=1.91cm,
			headheight=15pt,
			heightrounded, % to avoid spurious underfull messages
	]{geometry}
	%
	% save space
	\RequirePackage[margins=normal, bibliography=normal]{savetrees} % Must come **after** markdown

	% MAKE SURE WE HAVE EXACTLY SIX LINES PER INCH
	% ideal_interline_spaces = (1 inch - fontsize) / number_of_interline_spaces
	%                        = (72.27 pt - 12pt) / 5
	% spread_ratio = ideal_interline_spaces / current_interline_space
	%              = (72.27 pt - 12pt) / 5 / \baselineskip
	\makeatletter
	\RequirePackage{pgf}
	\pgfmathsetmacro{\spreadforsixlinesperinch}{(72.27 - \f@size) / 5 / \baselineskip}
	\linespread{\spreadforsixlinesperinch}
}


% Save more space: Zero whitespace around titles upon request
\ifbool{compact}{
	\RequirePackage[compact]{titlesec}
	\titlespacing*{\section}{0pt}{*0}{*0}
	\titlespacing*{\subsection}{0pt}{*0}{*0}
	\titlespacing*{\subsubsection}{0pt}{*0}{*0}
}{}


% Place name top right, page number bottom right
% should come *after* geometry
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhead{}
\fancyfoot{}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
\setlength{\headheight}{15pt}
%\fancyhead[R]{}
\fancyfoot[R]{\thepage}


\makeatother
