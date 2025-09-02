\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{lectionstyle}


\LoadClass[14pt]{extarticle}
%%%%%

\usepackage{dcolumn, booktabs,subcaption}
\usepackage{float}
\usepackage{multirow}
\usepackage{lscape}
\usepackage{longtable}
\usepackage{adjustbox}
\usepackage{pdflscape}
\usepackage{amsmath,amsfonts, amsthm,pgfmath,pgffor}

\usepackage{import}
\usepackage{mathtools,amssymb}

\usepackage{algorithm}
\usepackage{algpseudocode}
\newenvironment{russianalgorithm}[1][]
  {\begin{algorithm}[#1]
     \selectlanguage{russian}%
     \floatname{algorithm}{Алгоритм}%
     \renewcommand{\algorithmicif}{\textbf{если}}%
     \renewcommand{\algorithmicthen}{\textbf{то}}%
     \renewcommand{\algorithmicend}{\textbf{конец}}%
     \renewcommand{\algorithmicwhile}{\textbf{Пока}}%
     \renewcommand{\algorithmicrequire}{\textbf{Дано}}%
     \renewcommand{\algorithmicfor}{\textbf{для}}%
     \renewcommand{\algorithmicdo}{\textbf{выполнить}}%
     \renewcommand{\algorithmicensure}{\textbf{Необходимо}}%
     % Set other language requirements
  }
  {\end{algorithm}}

\newtheorem{theorem}{Теорема}
\newtheorem{lemma}[theorem]{Лемма}

%%%%%

% Шрифт Times New Roman
\usepackage{fontspec}
\usepackage{microtype}
\microtypesetup{protrusion=false}
\defaultfontfeatures{Mapping=tex-text}
% фикс polyglossia пишет что Times New Roman не поддерживает кирилицу
\newfontfamily\cyrillicfont{Times New Roman}[Script=Cyrillic]
\setmainfont[Ligatures=TeX]{Times New Roman}

\usepackage[english, main=russian]{babel} %настройка языка
\usepackage{csquotes} % цитирование
\usepackage{url} % адекватный перенос ссылок


\usepackage[left=3cm,right=1cm,top=2cm,bottom=2cm, nohead]{geometry} % отступы страницы
\usepackage[colorlinks=false, pdfborder={0 0 0},unicode]{hyperref}
\usepackage{import} % Разделение документа на части

\usepackage{indentfirst} %Красная строка после заголовка
\usepackage{amsmath} % Мат. формулы
\usepackage{amssymb} % Мат. символы
\usepackage{graphicx} % Вставка картинок
\usepackage{setspace} % Команды для настройки отступов

%счетчик страниц, рисунков и таблиц
\usepackage{totcount}
%\usepackage{indentfirst}


%нумерация формул
\numberwithin{equation}{section}

% Задание отступов
\renewcommand{\baselinestretch}{1.5}
\setlength{\baselineskip}{14pt}
\linespread{1.6}
\setlength{\parindent}{1.25cm}
\setlength{\parskip}{0em}
\setlength{\belowcaptionskip}{-14pt} % Убрать отступ у картинок
\emergencystretch=1em
\usepackage{setspace}


% Шрифт в section и центрирование
\usepackage{titlesec}
\titlelabel{\thetitle. } 
\titleformat{\section}[block]{\bfseries\filcenter}{\thetitle.}{14pt}{}
\titleformat{\subsection}[runin]{\bfseries}{\thesubsection.}{14pt}{}[{\\}]
\titlespacing*{\subsection}{\parindent}{7pt}{\parindent}
\titleformat{\subsubsection}[block]{\bfseries}{\thetitle.}{14pt}{}
% Исправление форматирования разделов
\titlespacing*{\section}{\parskip}{\parskip}{6pt}
% Красная строка для subsection
%\titlespacing*{\subsection}{\parindent}{6pt}{\parskip}
%\titlespacing*{\section}{\parindent}{6pt}{\parskip}
\titlespacing*{\subsubsection}{\parindent}{6pt}{\parskip}

% Настройка содержания
\usepackage[toc, page]{}
\usepackage{tocloft}
% Шрифт заголовока содержания
\renewcommand{\cfttoctitlefont}{\hfill\bfseries\fontsize{14}{14}\selectfont}
\renewcommand{\cftaftertoctitle}{\hfill\hfill}
% Шрифт и точки section
\renewcommand{\cftsecaftersnum}{.}
\renewcommand{\cftsecfont}{\fontsize{14pt}{0pt}\selectfont}
\renewcommand{\cftdot}{}
\renewcommand{\cftsecpagefont}{}
\setlength{\cftbeforesecskip}{14pt}
% Шрифт и точки subsection
\renewcommand{\cftsubsecfont}{\fontsize{14pt}{0pt}\selectfont}
\setlength{\cftbeforesubsecskip}{4pt}
\renewcommand{\cftsubsecaftersnum}{.}
\setlength{\cftsubsecindent}{0pt}
% Subsubsection
\renewcommand{\cftsubsubsecaftersnum}{.}
\renewcommand{\cftsubsubsecfont}{\fontsize{14pt}{0pt}\selectfont}
\setlength{\cftbeforesubsubsecskip}{4pt}
\setlength{\cftsubsubsecindent}{0pt}
