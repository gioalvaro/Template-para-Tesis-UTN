%% ****************************************************
%% **                                                **
%% **        Universidad Tecnológica Nacional        **
%% **                                                **
%% **    LaTeX Template for Thesis/Dissertation/FYP  **
%% **                                                **
%% **             Dr. Alvaro Luis Fraga              **
%% **              alvarofraga@ieee.org              **
%% **                                                **
%% **     "Build something which will outlast you"   **
%% **          (... amongst other things)            **
%% **                                                **
%% ****************************************************

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{utn}[2020/04/21-2020/05/17 v0.1 Universidad Tecnologica Nacional, Dissertation/FYP/Thesis Template]


\DeclareOption*{\PassOptionsToClass{\CurrentOption}{memoir}}
\ProcessOptions\relax
\LoadClass[12pt,a4paper,final]{memoir}


%% **************** Packages (Start) *********************

\RequirePackage[utf8]{inputenc}      % Required for inputting international characters
\RequirePackage[T1]{fontenc}         % Output font encoding for international characters
\RequirePackage{mathpazo}            % Use the Palatino font by default

\RequirePackage[english]{babel}      % Load babel if you're unsure about the default language - mostly to be safe
\RequirePackage{xcolor}              % For named colors
\RequirePackage{eso-pic}                 % required to place huge uni logo at the back - on title page
\RequirePackage[pdftex]{graphicx}    % For pictures
\RequirePackage{amssymb}             % At least, for black squares in bullet list
\RequirePackage[pdfusetitle]{hyperref}             % For hyperreferences
\RequirePackage[authoryear,semicolon,sort]{natbib} % for (Ebejer, 2012; Alba, 2013) kind of references; removed 'square' option after viva examination comments

\RequirePackage{longtable}           % For very long tables
\RequirePackage{pdflscape}			 % For landscape tables (instead of portrait)

\usepackage[defaultsans]{lato}		 % Sans font to use
\usepackage[printonlyused,withpage]{acronym}


%% ****************** Packages (End) *********************


%% ************ UTN Definitions (Start) *****************

\definecolor{OxfordBlue}{rgb}{0,0.106,0.329}   % Color
\definecolor{UMRed}{RGB}{0,102,153}   % UTN replace
\definecolor{UtnBlue}{RGB}{0,102,153}   

% Setup choosen University of Malta crest/logo
\def\logo{{\includegraphics[width=30mm]{CONICET_LOGO.png}}}

% The year and term the thesis is submitted 
\def\degreedate#1{\gdef\@degreedate{#1}}
% The full (unabbreviated) name of the degree
\def\degree#1{\gdef\@degree{#1}}
% The name of your supervisor
\def\supervisor#1{\gdef\@supervisor{#1}}
% The name of your co-supervisor
\def\cosupervisor#1{\gdef\@cosupervisor{#1}}
% The name of your department (e.g. Computer Science, Statistics, Biochemistry, AI)
\def\department#1{\gdef\@department{#1}}
% The name of your faculty
\def\faculty#1{\gdef\@faculty{#1}}
% The name of your faculty
\def\subjectcode#1{\gdef\@subjectcode{#1}}
% The tagline
\def\tagline#1{\gdef\@tagline{#1}}
% The document type, e.g. a dissertation or a thesis
\def\doctype#1{\gdef\@doctype{#1}}
\def\authorID#1{\gdef\@authorID{#1}}

%% ************* UTN Definitions (End) ******************


%% ************ Document Options (Start) *****************

\OnehalfSpacing                                  % One and a half line spacing

\setlength{\headsep}{1.5cm}                      % Add space between the header and text

\nouppercaseheads								 % Don't convert titles to Uppercase
\makepagestyle{utnpage}

												 % This travesty is due to a bug in memoir, see https://tex.stackexchange.com/questions/468922/oneside-in-memoir-causing-header-trouble
\makeevenhead{utnpage}{\color{gray}\sffamily\small\leftmark}{}{\color{gray}\sffamily\small\rightmark}
\makeoddhead{utnpage}{\color{gray}\sffamily\small\leftmark}{}{\color{gray}\sffamily\small\rightmark}
\makeevenfoot{utnpage}{}{\thepage}{}  			 % UTN pagestyle, put page at bottom
\makeoddfoot{utnpage}{}{\thepage}{}
\makeheadfootruleprefix{utnpage}{\color{gray}}{}
\makeheadrule{utnpage}{\textwidth}{\normalrulethickness}
\makepsmarks{utnpage}{%
	\createmark{chapter}{left}{shownumber}{\@chapapp\ }{. \ }
	\createmark{section}{right}{shownumber}{}{. \ }
}


\setlrmarginsandblock{3.7cm}{2.5cm}{*}           % Set the page margins (for one and two sided docs) 
\checkandfixthelayout                            % Put layout into effect

\graphicspath{{./images/}}                       % Where to look for images (paths) ...
\DeclareGraphicsExtensions{.pdf,.jpeg,.png,.jpg} % Graphics extensions to load

\chapterstyle{ell} % how to draw the different chapter headings

\renewcommand*{\chapnumfont}{\sffamily\HUGE\bfseries\color{UtnBlue}}  % Chapter titles should be normal
\renewcommand*{\chaptitlefont}{\sffamily\HUGE\bfseries\color{UtnBlue}}
\setsecheadstyle{\sffamily\LARGE\bfseries\color{UtnBlue}}% Set \section style
\setsubsecheadstyle{\sffamily\Large\color{UtnBlue}}% Set \subsection style
\setsubsubsecheadstyle{\sffamily\large\color{UtnBlue}}% Set \subsection style
\setsecnumformat{\csname the#1\endcsname\enskip{\color{gray}\textbar}\enskip}

\newsubfloat{figure} % declares a new subfloat element which allows to use \subbottom commands

\renewcommand{\labelitemi}{\color{UtnBlue}\scriptsize$\blacksquare$}

\addto{\captionsenglish}{\renewcommand{\bibname}{Referencias}} 
% because we are using babel we need this 
% instead of just redefining bibname
\setlength{\bibitemsep}{\onelineskip}

\newcommand{\ra}[1]{\renewcommand{\arraystretch}{#1}} % to set array stretch within tables

\hypersetup{%
    colorlinks=false,
%    linkcolor=UtnBlue,
%    citecolor=UtnBlue,
%    urlcolor=UtnBlue,
%    filecolor=magenta, 
    pdfborder={0 0 0},    
}

\feetbelowfloat % we want the footnotes below floats, not wierdly above

\setsecnumdepth{subsubsection}  % three level depth - chapter, section, subsection, subsubsection
\settocdepth{subsection}

\renewcommand*{\cftappendixname}{Apendice\space}
\newcommand{\removelinebreaks}[1]{%
	\begingroup\def\\{ }#1\endgroup}

%% ************* Document Options (End) ******************






%% *************** Environments (Start) ******************

%% *** Title Page (Start) ***
% background image
\newcommand\AlCentroPagina[1]{%
\AddToShipoutPicture*{\AtPageCenter{%
\makebox(0,-50){\includegraphics[width=0.5\paperwidth]{#1}}}}}
% end of background image (si el transparente)

% The front page
\renewcommand{\maketitle}
{\begingroup
\AlCentroPagina{utn_transparente}
\parbox[b][0.95\textheight][t]{0.2\textwidth}{\raggedleft\logo} %% this 0.95 is important, otherwise page overflows in next page
\hspace*{2ex}
\textcolor{UtnBlue}{\rule{2pt}{0.95\textheight}}
\hspace*{2ex}
\parbox[b][0.95\textheight][t]{0.8\textwidth}{
    \setlength{\parindent}{0pt}
    %%\fontfamily{pag}\selectfont
    \sffamily
    {\Huge\bfseries{\begin{Spacing}{1.15}\textcolor{UtnBlue}{\@title}\end{Spacing}}}
    \vspace*{2ex}
    {\large\textit{\@tagline}}\\[1in]
    
    {\LARGE\bfseries \textsc{\@author}} \\[1cm]
    {\large Dirigido por el \@supervisor} 
    \@ifundefined{@cosupervisor}{\\[2ex]}{\\[2ex]\large Co-dirigido por la \@cosupervisor}\\[1cm]
    {\large \@department} \\[1ex]
    {\large \@faculty} \\[1ex]
    {\large Universidad Tecnol\'ogica Nacional} \\
    \vfill
    {\bfseries \@degreedate}\\[\baselineskip]
	\parbox[t]{0.80\linewidth}{\footnotesize\textit{Una \@doctype\ presentada en cumplimiento parcial de los requisitos para el titulo de \@degree}}    
}
\thispagestyle{empty}
\if@openright\cleardoublepage\else\clearpage\fi
\endgroup}

%% *** Title Page (End) ***

%% *** Rename Commands ****
%\abstractname	Abstract
%\alsoname	see also (makeidx package)
%\appendixname	Appendix
%\bibname	Bibliography (report,book)
%\ccname	cc (letter)
%\chaptername	Chapter (report,book)
%\contentsname	Contents
%\enclname	encl (letter)
%\figurename	Figure (for captions)
%\headtoname	To (letter)
%\indexname	Index
%\listfigurename	List of Figures
%\listtablename	List of Tables
%\pagename	Page (letter)
%\partname	Part
%\refname	References (article)
%\seename	see (makeidx package)
%\tablename	Table (for caption)

\newenvironment{acknowledgements}
{\renewcommand{\abstractname}{\Large\bfseries\sffamily\textcolor{UtnBlue}{Agradecimientos}}\abstract}
{\endabstract\if@openright\cleardoublepage\else\clearpage\fi}
       
\addto{\captionsenglish}{\renewcommand{\abstractname}{\Large\bfseries\sffamily\textcolor{UtnBlue}{Resumen}}}

\addto{\captionsenglish}{\renewcommand{\chaptername}{Capítulo}}
\addto{\captionsenglish}{\renewcommand{\tablename}{Tabla}}
\addto{\captionsenglish}{\renewcommand{\partname}{Parte}}
\addto{\captionsenglish}{\renewcommand{\contentsname}{Contenido}}
\addto{\captionsenglish}{\renewcommand{\figurename}{Figura}}
\addto{\captionsenglish}{\renewcommand{\indexname}{Índice}}
\addto{\captionsenglish}{\renewcommand{\listfigurename}{Lista de Figuras}}
\addto{\captionsenglish}{\renewcommand{\listtablename}{Lista de Tablas}}

%% *** End of Rename Commands ****


\newenvironment{dedication}
  {\clearpage           % we want a new page
   \thispagestyle{empty}% no header and footer
   \vspace*{\stretch{1}}% some space at the top 
   \itshape             % the text is in italics
   \raggedleft          % flush to the right margin
   \textcolor{UtnBlue}
  }
  {\par % end the paragraph
   \vspace{\stretch{3}} % space at bottom is three times that at the top
   \if@openright\cleardoublepage\else\clearpage\fi
  }       
       



% STATEMENT OF ORIGINALITY
%
% The originality environment puts a large, bold, centered 
% "Statement of originality" label at the top of the page. The statement 
% of originality itself appears in a quote environment, i.e. tabbed in at 
% both sides, and on its own page.


%% This was updated to the official Statement of Originality (Authentication form)

\newenvironment{originality}
{\clearpage\thispagestyle{empty}
\begin{figure}[h]
	\includegraphics[width=2.5in]{images/UTN_FRSF.png}
\end{figure}
\vspace{3mm}
{\noindent\Large\bfseries\sffamily\textcolor{UtnBlue}{Declaraci\'on  del Estudiante de Doctorado}}\\ 
{\setlength{\parindent}{0em}
	
\textbf{(a) Autenticidad de la Tesis}\\

\noindent Declaro que soy el autor legítimo de esta tesis y que es mi obra original.

Ninguna parte de este trabajo ha sido presentada en apoyo de una solicitud de otro título o cualificación de esta o cualquier otra universidad o institución de educación superior.

Considero que la Universidad Tecnol\'ogica Nacional queda exenta de toda responsabilidad ante cualquier reclamo de terceros en relación con la violación de los derechos de autor, la violación de la confidencialidad, la difamación y cualquier otra violación de los derechos de terceros.\\

\textbf{(b) Código de práctica de investigación y procedimientos de revisión ética}\\

Declaro que he acatado los procedimientos de revisión de ética de la investigación de la Universidad.

Como estudiante de doctorado, de conformidad con la reglamentación general la Universidad y acepto de conformidad el uso y publicación en el repositorio institucional de la Universidad Tecnol\'ogica Nacional.}\\[5mm]
%%\newcolumntype{L}{>{\arraybackslash}m{2.5in}}
\bgroup
\def\arraystretch{1.2}%
\begin{tabular}{ll}
{\bfseries Facultad/Instituto/Centro/Escuela} & \@faculty \\
{\bfseries Doctorado} & \@degree \\
{\bfseries Titulo}  & \removelinebreaks{\@title} \\	
{\bfseries Candidato \@ifundefined{@authorID}{}{(Legajo)}} & \@author\ \@ifundefined{@authorID}{}{(\@authorID)} \\[0.7in]	
{\bfseries Firma del Estudiante} & \makebox[2in]{\hrulefill} \\
{\bfseries Fecha} & \today \\
\end{tabular}\\[1cm]
\egroup
\noindent 21.04.2020
\if@openright\cleardoublepage\else\clearpage\fi}


% COPYRIGHT
%
% The originality environment puts a large, bold, centered 
% "Statement of originality" label at the top of the page. The statement 
% of originality itself appears in a quote environment, i.e. tabbed in at 
% both sides, and on its own page.

\newenvironment{copyrightenv}
{\clearpage
	~\vfill
	\thispagestyle{empty}
	
	\begin{figure}[h]
		\includegraphics[width=2.5in]{logo-gratuidad}
	\end{figure}
	
	\noindent Copyright \textcopyright\the\year\ Universidad Tecnol\'ogica Nacional\\ % Copyright notice
	
	\noindent \textsc{www.utn.edu.ar}\\ % URL
	
	\noindent \textit{Primera edici\'on, \today} % Printing/edition date

	\if@openright\cleardoublepage\else\clearpage\fi}

%% **************** Environments (End) *******************