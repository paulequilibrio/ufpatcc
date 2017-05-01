%%
%% This is file `ufpatcc.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% ufpatcc.dtx  (with options: `class')
%% 
%% Copyright (C) 2017 by Paulo Alexandre Aquino da Costa <contato@pauloalexandre.com>
%% 
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License (LPPL), either
%% version 1.3c of this license or (at your option) any later
%% version.  The latest version of this license is in the file:
%% 
%% http://www.latex-project.org/lppl.txt
%% 
%% This work is "maintained" (as per LPPL maintenance status) by
%% Paulo Alexandre Aquino da Costa.
%% 
\NeedsTeXFormat{LaTeX2e}[2017/01/01]
\ProvidesClass{ufpatcc}
    [2017/02/17 v0.1 Classe LaTeX para
    trabalhos de conclusão de curso na
    Universidade Federal do Pará (UFPA)]
\newif\if@times
\newif\if@arial
\DeclareOption{times}{\@timestrue}
\DeclareOption{arial}{\@arialtrue}
\DeclareOption*{\PassOptionToClass{\CurrentOption}{report}}
\ProcessOptions
\LoadClass[12pt,a4paper]{report}
\if@times
  \RequirePackage{newtxtext}
  \RequirePackage{newtxmath}
  \RequirePackage[scaled=.90]{helvet}
  \RequirePackage{courier}
\fi
\if@arial
  \RequirePackage{newtxtext}
  \renewcommand{\familydefault}{\sfdefault}
\fi
\RequirePackage[brazil]{babel}
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{indentfirst}
\RequirePackage{amsmath}
\RequirePackage{graphicx}
\RequirePackage{geometry}
\RequirePackage{fancyhdr}
\RequirePackage[hyphens]{url}
\RequirePackage[unicode,colorlinks]{hyperref}

\newcommand*{\logo}              [1]{\gdef\@logo{#1}}
\newcommand*{\universidade}      [1]{\gdef\@universidade{#1}}
\newcommand*{\instituto}         [1]{\gdef\@instituto{#1}}
\newcommand*{\faculdade}         [1]{\gdef\@faculdade{#1}}
\newcommand*{\curso}             [1]{\gdef\@curso{#1}}
\newcommand*{\nivel}             [1]{\gdef\@nivel{#1}}
\newcommand*{\grau}              [1]{\gdef\@grau{#1}}
\newcommand*{\tipodetrabalho}    [1]{\gdef\@tipodetrabalho{#1}}
\newcommand*{\titulo}            [1]{\gdef\@titulo{#1}}
\newcommand*{\subtitulo}         [1]{\gdef\@subtitulo{#1}}
\newcommand*{\palavraschave}     [1]{\gdef\@palavraschave{#1}}
\newcommand*{\keywords}          [1]{\gdef\@keywords{#1}}
\newcommand*{\autor}             [2]{\gdef\@autor{#1}\gdef\@autorcitacao{#2}}
\newcommand*{\orientador}        [1]{\gdef\@orientador{#1}}
\newcommand*{\coorientador}      [1]{\gdef\@coorientador{#1}}
\newcommand*{\diretordafaculdade}[1]{\gdef\@diretordafaculdade{#1}}
\newcommand*{\cidade}            [1]{\gdef\@cidade{#1}}
\newcommand*{\estado}            [1]{\gdef\@estado{#1}}
\newcommand*{\ano}               [1]{\gdef\@ano{#1}}
\newcommand*{\membrodabanca}     [1]{\stepcounter{membros}\@membro{#1}}

\universidade{Universidade Federal do Pará}
\tipodetrabalho{Trabalho de Conclusão de Curso}
\instituto{Instituto de Tecnologia}
\nivel{Graduação}
\cidade{Belém}
\estado{Pará}
\ano{\the\year}
\faculdade{NOME DA FACULDADE}
\curso{NOME DO CURSO}
\titulo{TÍTULO DO TRABALHO}
\palavraschave{PALAVRAS-CHAVE}
\keywords{KEYWORDS}
\autor{Nome Completo do Autor}{AUTOR, Nome Completo do}
\orientador{Titulação e Nome Completo do Orientador}
\grau{GRAU OBTIDO}
\logo{}
\subtitulo{}
\coorientador{}
\diretordafaculdade{}

\newcommand\if@logo[2]{\if|\@logo\empty|#2\else#1\fi}
\newcommand\if@subtitulo[2]{\if|\@subtitulo\empty|#2\else#1\fi}
\newcommand\if@coorientador[2]{\if|\@coorientador\empty|#2\else#1\fi}

\newcommand\capa{
  \thispagestyle{empty}
  \begin{center}
    \if@logo{\includegraphics[height=3cm]{\@logo}}{}
    \vspace{1cm}
    \par\MakeUppercase\@universidade
    \par\MakeUppercase\@instituto
    \par\MakeUppercase\@faculdade
    \vspace{4cm}
    \par\textbf{\MakeUppercase\@titulo}\if@subtitulo{:}{}
    \par\textbf{\@subtitulo}
    \vspace{4cm}
    \begin{flushright}
      \textbf{\MakeUppercase\@autor}
    \end{flushright}
    \vfill
    \MakeUppercase\@cidade{} -- \MakeUppercase\@estado
    \par\@ano
  \end{center}
  \clearpage
}

\newcommand\folhaderosto{
  \thispagestyle{empty}
  \begin{center}
    \if@logo{\includegraphics[height=3cm]{\@logo}}{}
    \vspace{1cm}
    \par\MakeUppercase\@universidade
    \par\MakeUppercase\@instituto
    \par\MakeUppercase\@faculdade
    \vspace{2cm}
    \par\textbf{\MakeUppercase\@autor}
    \vspace{2cm}
    \par\textbf{\MakeUppercase\@titulo}\if@subtitulo{:}{}
    \par\textbf{\@subtitulo}
    \vspace{2cm}
    \begin{flushright}
      \begin{minipage}[right]{7cm}
        \@espacamento{1.5}{
          \fontsize{10pt}{10pt}\selectfont
          \@tipodetrabalho{} apresentado para obtenção
          do grau de \@grau{} em \@curso{}, do \@instituto{},
          da \@faculdade{}. Sob orientação de \@orientador{}%
          \if@coorientador{ e coorientação de \@coorientador{}}{}.
        }
       \end{minipage}
    \end{flushright}
    \vfill
    \MakeUppercase\@cidade{} -- \MakeUppercase\@estado
    \par\@ano
  \end{center}
  \clearpage
}

\newcommand\fichacatalografica[3]{
  \thispagestyle{empty}
  \newcommand\@biblioteca{#1}
  \newcommand\@classificacao{#2}
  \newcommand\@cdd{#3}
  \null\vfill
  \begin{center}\sf
    Dados Internacionais de Catalogação na Publicação (CIP)\par
    \@biblioteca / \@universidade{}, \@cidade{}-\@estado{}\par
    \rule{1\linewidth}{0.5pt}\par\vspace*{0.3cm}
    \begin{minipage}{0.95\linewidth}
      {
        \footnotesize\setlength{\baselineskip}{1.1\baselineskip}
        \@autorcitacao{}.
        \par\setlength{\parindent}{0.75cm}
        \@titulo{}\if@subtitulo{: \MakeLowercase\@subtitulo{}}{} /
        \@autor{}; orientador \@orientador{} --- \@ano{}.
        \par\vspace*{0.4cm}
        \@tipodetrabalho{} (\@nivel{} em \@curso{}) -- \@universidade{},
        \@instituto{}, Curso de \@curso{}, \@cidade{}, \@ano{}.
        \par\vspace*{0.4cm}
        \@classificacao{}
        \par\vspace*{0.4cm}
        \begin{flushright}
          CDD - \@cdd{}
        \end{flushright}
      }
    \end{minipage}
    \par\vspace*{0.3cm}\rule{1\linewidth}{0.5pt}
  \end{center}
  \clearpage
}

\newcounter{membros}
\long\gdef\@membro#1{\membro@add#1,,\end}
\long\gdef\membro@add#1,#2,#3,#4\end{
  \expandafter\def\csname membro@\alph{membros}@nome\endcsname{\expandafter#1}
  \expandafter\def\csname membro@\alph{membros}@instituicao\endcsname{#2}
  \ifx,#3,\expandafter\let\csname membro@\alph{membros}@papel\endcsname\empty
  \else \expandafter\def\csname membro@\alph{membros}@papel\endcsname{#3}\fi
}

\newcommand\folhadeaprovacao[1]{
  \thispagestyle{empty}
  \begin{center}
    \textbf{\MakeUppercase\@titulo}\if@subtitulo{:}{}
    \par\textbf{\@subtitulo}
  \end{center}
  \@indentacao{0}{\@espacamento{2.0}{
    Este trabalho foi julgado adequado em #1
    para a obtenção do Grau de \@grau{} em \@curso{},
    aprovado em sua forma final pela banca examinadora
    que atribui o conceito $\underline{ \qquad \qquad \qquad}$.
  }}
  \par\vfil
  \begin{flushright}
    \begin{minipage}[b]{10cm}
      \begin{flushright}
        \@espacamento{1.25}{
          \newcounter{tmp}
          \c@tmp=0
          \loop
            \advance\c@tmp by 1
            \vspace*{1.5cm}\par
            \if
              \expandafter\csname membro@\alph{tmp}@nome\endcsname\empty
            \else
              \vrule width 10cm height 0.2mm\par
            \fi
            {\large\expandafter\csname membro@\alph{tmp}@nome\endcsname{}}\par
            {\small\MakeUppercase{\expandafter\csname
            membro@\alph{tmp}@instituicao\endcsname}}\par
            \if
              \expandafter\csname membro@\alph{tmp}@papel\endcsname\empty
            \else
              {\small\MakeUppercase{\expandafter\csname
              membro@\alph{tmp}@papel\endcsname}}
            \fi
            \ifnum\c@tmp<\c@membros
          \repeat
          \if \@diretordafaculdade\empty\else
            \vspace{2cm}\par
            \vrule width 10cm height 0.2mm\par
            {\large\@diretordafaculdade{}}\par
            {\small\MakeUppercase{Diretor da \@faculdade}}
          \fi
        }
      \end{flushright}
    \end{minipage}
  \end{flushright}
  \clearpage
}

\newcommand\referencias[2][Referências Bibliográficas]{
  \renewcommand{\bibname}{#1}
  {
    \setlength{\baselineskip}{1.2\baselineskip}
    \bibliography{#2}
    \addcontentsline{toc}{chapter}{\bibname}
  }
}

\newcommand\@referencia{
  \@autorcitacao{}. \textbf{\@titulo}\ignorespaces
  \if@subtitulo{: \MakeLowercase\@subtitulo{}}{}.
  \@tipodetrabalho{} (\@nivel{} em \@curso{}) ---
  \@universidade{}, \@cidade{}, \@ano{}.\par\vspace{1cm}
}

\newcommand\@indentacao[2]{{\setlength{\parindent}{#1cm}#2}}

\newcommand\@espacamento[2]{{
  \def\baselinestretch{#1}
  \@currsize #2\par
}}

\newenvironment{dedicatoria}
{
  \thispagestyle{empty}
  \null\vfill
  \begin{flushright}
    \begin{minipage}{10cm}
      \begin{flushright}
        \fontshape{it}\selectfont
}{
      \end{flushright}
    \end{minipage}
  \end{flushright}
  \clearpage
}

\newenvironment{agradecimentos}
{
  \thispagestyle{empty}
  \begin{center}
    \huge\bfseries Agradecimentos
  \end{center}
  \par\vspace{1cm}\setlength{\parindent}{1cm}
}{\clearpage}

\newenvironment{epigrafe}
{
  \thispagestyle{empty}
  \null\vfill
  \begin{flushright}
    \begin{minipage}{10cm}
      \begin{flushright}
        \fontshape{it}\selectfont
}{
      \end{flushright}
    \end{minipage}
  \end{flushright}
  \clearpage
}

\newenvironment{resumo}
{
  \thispagestyle{empty}
  \begin{center}
    \huge\bfseries Resumo
  \end{center}
  \par\vspace{1cm}\setlength{\parindent}{0cm}
  \@referencia{}
}{
  \par\vspace{0.25cm}
  {\bfseries Palavras-chave:} \@palavraschave{}.
  \clearpage
}

\renewenvironment{abstract}
{
  \thispagestyle{empty}
  \begin{center}
    \huge\bfseries Abstract
  \end{center}
  \par\vspace{1cm}\setlength{\parindent}{0cm}
  \@referencia{}
}{
  \par\vspace{0.25cm}
  {\bfseries Keywords:} \@keywords{}.
  \clearpage
}

\geometry{a4paper,
          top=3cm,bottom=2cm,left=3cm,right=2cm,
          headsep=5mm,headheight=7mm,
          marginparsep=5mm,marginparwidth=10mm}

\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
\fancypagestyle{plain}{\fancyhf{}} % for chapters first pages
\fancypagestyle{numbered}{
  \fancyhf{}
  \fancyhead[R]{\thepage}
}

\AtBeginDocument{
  \flushbottom
  \pagestyle{numbered}
  \setlength{\parindent}{1.75cm}
  \setlength{\parskip}{1ex plus 0.5ex minus 0.2ex}
  \hypersetup{
    hypertexnames,bookmarksopen=true,
    linkcolor=black,citecolor=black,urlcolor=black,
    pdftitle={\@titulo\if@subtitulo{: \@subtitulo}{}},
    pdfauthor={\@autor},
    pdfsubject={\@tipodetrabalho},
    pdfkeywords={\@palavraschave}
  }
  \input{\jobname.cfg}
}

%% 
%% -------:| -----------------------------------------------------------------
%% ufpatcc:| Classe LaTeX para trabalhos de conclusão de curso na Universidade Federal do Pará
%%  Author:| Paulo Alexandre Aquino da Costa
%%  E-mail:| contato@pauloalexandre.com
%% License:| Released under the LaTeX Project Public License v1.3c or later
%%     See:| http://www.latex-project.org/lppl.txt
%% 
%% This work consists of the file ufpatcc.dtx and a Makefile.
%% Running "make" generates the derived files README, ufpatcc.pdf and ufpatcc.cls.
%% Running "make inst" installs the files in the user's TeX tree.
%% Running "make install" installs the files in the local TeX tree.
%% 
%%
%% End of file `ufpatcc.cls'.
