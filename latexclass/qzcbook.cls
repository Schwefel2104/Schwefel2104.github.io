\ProvidesClass{qzcbook}
\NeedsTeXFormat{LaTeX2e}

\chardef\f@@r=4
\chardef\f@v@=5

\RequirePackage{babel}

\DeclareOption{chinese}{\babelprovide[main]{chinese}}
\DeclareOption{english}{\PassOptionsToClass{scheme=plain}{ctexbook}\babelprovide[main]{english}}
\DeclareOption{french}{\PassOptionsToClass{scheme=plain}{ctexbook}\babelprovide[main]{french}}
\DeclareOption{german}{\PassOptionsToClass{scheme=plain}{ctexbook}\babelprovide[main]{german}}
\DeclareOption{russian}{\PassOptionsToClass{scheme=plain}{ctexbook}\babelprovide[main]{russian}}
\DeclareOption{spanish}{\PassOptionsToClass{scheme=plain}{ctexbook}\babelprovide[main]{spanish}}
\DeclareOption{thmbmk}{
    \newcommand{\thmbkm}{\bookmark[dest=\@currentHref,rellevel=1,keeplevel]{\thmt@thmname\space\csname the\thmt@envname\endcsname\ifx\thmt@shortoptarg\@empty\else\space(\thmt@shortoptarg)\fi}}
    \AddToHook{cmd/thmt@theorem@postheadhook/before}{\thmbkm}
    \AddToHook{cmd/thmt@lemma@postheadhook/before}{\thmbkm}
    \AddToHook{cmd/thmt@corollary@postheadhook/before}{\thmbkm}
    \AddToHook{cmd/thmt@proposition@postheadhook/before}{\thmbkm}
    \AddToHook{cmd/thmt@conjecture@postheadhook/before}{\thmbkm}
    \AddToHook{cmd/thmt@criterion@postheadhook/before}{\thmbkm}
    \AddToHook{cmd/thmt@assertion@postheadhook/before}{\thmbkm}
    \AddToHook{cmd/thmt@definition@postheadhook/before}{\thmbkm}
    \AddToHook{cmd/thmt@condition@postheadhook/before}{\thmbkm}
    \AddToHook{cmd/thmt@problem@postheadhook/before}{\thmbkm}
    \AddToHook{cmd/thmt@example@postheadhook/before}{\thmbkm}
    \AddToHook{cmd/thmt@exercise@postheadhook/before}{\thmbkm}
    \AddToHook{cmd/thmt@algorithm@postheadhook/before}{\thmbkm}
    \AddToHook{cmd/thmt@question@postheadhook/before}{\thmbkm}
    \AddToHook{cmd/thmt@axiom@postheadhook/before}{\thmbkm}
    \AddToHook{cmd/thmt@property@postheadhook/before}{\thmbkm}
    \AddToHook{cmd/thmt@assumption@postheadhook/before}{\thmbkm}
    \AddToHook{cmd/thmt@hypothesis@postheadhook/before}{\thmbkm}
}
\ExecuteOptions{}
\ProcessOptions\relax

\LoadClass[fontset=none,12pt,oneside]{ctexbook}

\RequirePackage{fontspec}
\RequirePackage{csquotes}
\RequirePackage{microtype}

\RequirePackage{xcolor}
\RequirePackage[a4paper,margin=1in]{geometry}
\RequirePackage{multicol}
\RequirePackage{fancyhdr}
\RequirePackage[inline]{enumitem}
\RequirePackage{authblk}
\RequirePackage{titling}

\RequirePackage{mathtools}
\RequirePackage[math-style=ISO,bold-style=ISO,nabla=italic,partial=upright,warnings-off={mathtools-colon,mathtools-overbracket}]{unicode-math}
\RequirePackage{amsthm}
\RequirePackage{thmtools}
\RequirePackage{empheq}
\RequirePackage{accents}
\RequirePackage{cancel}
\RequirePackage{xfrac}
\RequirePackage{derivative}
\RequirePackage[parse-numbers=false]{siunitx}
\RequirePackage{tikz}

\RequirePackage{graphicx}
\RequirePackage{xltabular}
\RequirePackage{booktabs}
\RequirePackage{float}
\RequirePackage{caption}
\RequirePackage{subcaption}

\RequirePackage[style=alphabetic,autolang=other]{biblatex}
\RequirePackage{imakeidx}

\RequirePackage[colorlinks]{hyperref}
\RequirePackage[numbered]{bookmark}

%%%%%%%%%%%%%%%% Preamble %%%%%%%%%%%%%%%%

%\defaultfontfeatures{Path=fonts/}

\AddToHook{cmd/bfseries/after}{\boldmath}
\AddToHook{cmd/mdseries/after}{\unboldmath}

\babelprovide[import]{chinese}
\babelprovide[import]{english}
\babelprovide[import]{french}
\babelprovide[import]{german}
\babelprovide[import]{russian}
\babelprovide[import]{spanish}
\iffalse
\babelfont{rm}[
    UprightFont     = *-Regular,
    BoldFont        = *-Bold,
    ItalicFont      = *-Italic,
    BoldItalicFont  = *-BoldItalic,
]{STIXTwoText}
\babelfont{sf}[
    UprightFont     = *-regular,
    BoldFont        = *-bold,
    ItalicFont      = *-italic,
    BoldItalicFont  = *-bolditalic,
]{texgyreheros}
\babelfont{tt}[
    UprightFont     = *-regular,
    BoldFont        = *-bold,
    ItalicFont      = *-italic,
    BoldItalicFont  = *-bolditalic,
]{texgyrecursor}
\fi

\setlocalecaption{english}{theorem}{Theorem}
\setlocalecaption{english}{lemma}{Lemma}
\setlocalecaption{english}{corollary}{Corollary}
\setlocalecaption{english}{proposition}{Proposition}
\setlocalecaption{english}{conjecture}{Conjecture}
\setlocalecaption{english}{criterion}{Criterion}
\setlocalecaption{english}{assertion}{Assertion}
\setlocalecaption{english}{definition}{Definition}
\setlocalecaption{english}{condition}{Condition}
\setlocalecaption{english}{problem}{Problem}
\setlocalecaption{english}{example}{Example}
\setlocalecaption{english}{exercise}{Exercise}
\setlocalecaption{english}{algorithm}{Algorithm}
\setlocalecaption{english}{question}{Question}
\setlocalecaption{english}{axiom}{Axiom}
\setlocalecaption{english}{property}{Property}
\setlocalecaption{english}{assumption}{Assumption}
\setlocalecaption{english}{hypothesis}{Hypothesis}
\setlocalecaption{english}{remark}{Remark}
\setlocalecaption{english}{remarks}{Remarks}
\setlocalecaption{english}{note}{Note}
\setlocalecaption{english}{notes}{Notes}
\setlocalecaption{english}{notation}{Notation}
\setlocalecaption{english}{notations}{Notations}
\setlocalecaption{english}{claim}{Claim}
\setlocalecaption{english}{summary}{Summary}
\setlocalecaption{english}{acknowledgment}{Acknowledgment}
\setlocalecaption{english}{case}{Case}
\setlocalecaption{english}{conclusion}{Conclusion}
\setlocalecaption{english}{solution}{Solution}

\setlocalecaption{chinese}{contents}{目录}
\setlocalecaption{chinese}{listfigure}{插图}
\setlocalecaption{chinese}{listtable}{表格}
\setlocalecaption{chinese}{figure}{图}
\setlocalecaption{chinese}{table}{表}
\setlocalecaption{chinese}{index}{索引}
\setlocalecaption{chinese}{bib}{参考文献}
\setlocalecaption{chinese}{appendix}{附录}
\setlocalecaption{chinese}{proof}{证明}

\setlocalecaption{chinese}{theorem}{定理}
\setlocalecaption{chinese}{lemma}{引理}
\setlocalecaption{chinese}{corollary}{推论}
\setlocalecaption{chinese}{proposition}{命题}
\setlocalecaption{chinese}{conjecture}{猜想}
\setlocalecaption{chinese}{definition}{定义}
\setlocalecaption{chinese}{problem}{问题}
\setlocalecaption{chinese}{example}{例子}
\setlocalecaption{chinese}{exercise}{练习}
\setlocalecaption{chinese}{axiom}{公理}
\setlocalecaption{chinese}{remark}{注释}
\setlocalecaption{chinese}{summary}{总结}
\setlocalecaption{chinese}{solution}{解答}

\setlocalecaption{french}{theorem}{Théorème}
\setlocalecaption{french}{lemma}{Lemme}
\setlocalecaption{french}{corollary}{Corollaire}
\setlocalecaption{french}{proposition}{Proposition}
\setlocalecaption{french}{conjecture}{Conjecture}
\setlocalecaption{french}{definition}{Définition}
\setlocalecaption{french}{problem}{Problème}
\setlocalecaption{french}{example}{Exemple}
\setlocalecaption{french}{exercise}{Exercice}
\setlocalecaption{french}{axiom}{Axiome}
\setlocalecaption{french}{remark}{Remarque}
\setlocalecaption{french}{summary}{Résumé}
\setlocalecaption{french}{solution}{Solution}

\setlocalecaption{german}{theorem}{Satz}
\setlocalecaption{german}{lemma}{Lemma}
\setlocalecaption{german}{corollary}{Korollar}
\setlocalecaption{german}{proposition}{Proposition}
\setlocalecaption{german}{conjecture}{Vermutung}
\setlocalecaption{german}{definition}{Definition}
\setlocalecaption{german}{problem}{Problem}
\setlocalecaption{german}{example}{Beispiel}
\setlocalecaption{german}{exercise}{Übung}
\setlocalecaption{german}{axiom}{Axiom}
\setlocalecaption{german}{remark}{Bemerkung}
\setlocalecaption{german}{summary}{Zusammenfassung}
\setlocalecaption{german}{solution}{Lösung}

\setlocalecaption{russian}{theorem}{Теорема}
\setlocalecaption{russian}{lemma}{Лемма}
\setlocalecaption{russian}{corollary}{Следствием}
\setlocalecaption{russian}{proposition}{Предложение}
\setlocalecaption{russian}{conjecture}{Гипотеза}
\setlocalecaption{russian}{definition}{Определение}
\setlocalecaption{russian}{problem}{Задача}
\setlocalecaption{russian}{example}{Пример}
\setlocalecaption{russian}{exercise}{Упражнение}
\setlocalecaption{russian}{axiom}{Аксиома}
\setlocalecaption{russian}{remark}{Замечание}
\setlocalecaption{russian}{summary}{Резюме}
\setlocalecaption{russian}{solution}{Решение}

\setlocalecaption{spanish}{theorem}{Teorema}
\setlocalecaption{spanish}{lemma}{Lema}
\setlocalecaption{spanish}{corollary}{Corolario}
\setlocalecaption{spanish}{proposition}{Proposición}
\setlocalecaption{spanish}{conjecture}{Conjetura}
\setlocalecaption{spanish}{definition}{Definición}
\setlocalecaption{spanish}{problem}{Problema}
\setlocalecaption{spanish}{example}{Ejemplo}
\setlocalecaption{spanish}{exercise}{Ejercicio}
\setlocalecaption{spanish}{axiom}{Axioma}
\setlocalecaption{spanish}{remark}{Observación}
\setlocalecaption{spanish}{summary}{Resumen}
\setlocalecaption{spanish}{solution}{Solución}

\DeclareQuoteStyle{chinese}{\textquotedblleft}{\textquotedblright}{\textquoteleft}{\textquoteright}
\iffalse
\setCJKmainfont[
    UprightFont     = *SSK,
    BoldFont        = *XBSK,
    ItalicFont      = *KTK,
    BoldItalicFont  = *KTK,
]{FZ}
\setCJKsansfont[
    UprightFont     = *XH1K,
    BoldFont        = *HTK,
    ItalicFont      = *XH1K,
    BoldItalicFont  = *HTK,
]{FZ}
\setCJKmonofont[
    UprightFont     = *FSK,
    BoldFont        = *FSK,
    ItalicFont      = *FSK,
    BoldItalicFont  = *FSK,
]{FZ}
\fi
%%%%%%%%%%%%%%%% Preamble %%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%% Page and Text %%%%%%%%%%%%%%%%

\setlength{\headheight}{30pt}

\pagestyle{fancy}

\fancyhead{}
\fancyhead[C]{\includegraphics[scale=0.5]{qiuzhen.png}}

\renewcommand{\headrulewidth}{0pt}

\setlist[enumerate,1]{label=(\arabic*)}
\setlist[enumerate,2]{label=(\alph*),ref=(\alph*)}
\setlist[enumerate,3]{label=(\roman*),ref=(\roman*)}
\setlist[enumerate,4]{label=(\Alph*),ref=(\Alph*)}

\pretitle{\begin{center}\huge}
\preauthor{\begin{center}\Large\lineskip0.75em\begin{tabular}[t]{c}}
\predate{\begin{center}\Large}

\renewcommand{\maketitlehooka}{\vspace{-50pt}}
\renewcommand{\maketitlehookb}{\vspace{300pt}}
\renewcommand{\maketitlehookc}{\vspace{100pt}}

\DeclareHookRule{shipout/background}{pgfrcs}{after}{pagebackground}

\AddToHook{shipout/background}[pagebackground]{
    \tikz[remember picture,overlay]{
        \node [opacity=0.25] at (current page.center) {\includegraphics[scale=1.5]{redqiuzhen.png}};
    }
}

%%%%%%%%%%%%%%%% Page and Text %%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%% Mathematics %%%%%%%%%%%%%%%%

\allowdisplaybreaks

\DeclareMathOperator{\arcsec}{arcsec}
\DeclareMathOperator{\arccsc}{arccsc}
\DeclareMathOperator{\sech}{sech}
\DeclareMathOperator{\csch}{csch}
\DeclareMathOperator{\arsinh}{arsinh}
\DeclareMathOperator{\arcosh}{arcosh}
\DeclareMathOperator{\artanh}{artanh}
\DeclareMathOperator{\arcoth}{arcoth}
\DeclareMathOperator{\arsech}{arsech}
\DeclareMathOperator{\arcsch}{arcsch}
\DeclareMathOperator{\versin}{versin}
\DeclareMathOperator{\vercos}{vercos}
\DeclareMathOperator{\coversin}{coversin}
\DeclareMathOperator{\covercos}{covercos}
\DeclareMathOperator{\haversin}{haversin}
\DeclareMathOperator{\havercos}{havercos}
\DeclareMathOperator{\hacoversin}{hacoversin}
\DeclareMathOperator{\hacovercos}{hacovercos}
\DeclareMathOperator{\arcversin}{arcversin}
\DeclareMathOperator{\arcvercos}{arcvercos}
\DeclareMathOperator{\arccoversin}{arccoversin}
\DeclareMathOperator{\arccovercos}{arccovercos}
\DeclareMathOperator{\archaversin}{archaversin}
\DeclareMathOperator{\archavercos}{archavercos}
\DeclareMathOperator{\archacoversin}{archacoversin}
\DeclareMathOperator{\archacovercos}{archacovercos}

\DeclareMathOperator{\Arg}{Arg}

\DeclareMathOperator{\proj}{proj}
\DeclareMathOperator{\oproj}{oproj}

\DeclareMathOperator{\cdm}{cdm}
\DeclareMathOperator{\dom}{dom}
\DeclareMathOperator{\img}{img}
\DeclareMathOperator{\rng}{rng}

\DeclareMathOperator{\chr}{char}
\DeclareMathOperator{\rank}{rank}
\DeclareMathOperator{\tr}{tr}

\DeclareMathOperator{\Cent}{C}
\DeclareMathOperator{\I}{I}
\DeclareMathOperator{\N}{N}
\DeclareMathOperator{\Nil}{Nil}
\DeclareMathOperator{\Orb}{Orb}
\DeclareMathOperator{\Rad}{Rad}
\DeclareMathOperator{\Span}{Span}
\DeclareMathOperator{\Spec}{Spec}
\DeclareMathOperator{\Stab}{Stab}

\DeclareMathOperator{\Alt}{Alt}
\DeclareMathOperator{\Aut}{Aut}
\DeclareMathOperator{\C}{C}
\DeclareMathOperator{\Dih}{Dih}
\DeclareMathOperator{\Dic}{Dic}
\DeclareMathOperator{\End}{End}
\DeclareMathOperator{\Frob}{Frob}
\DeclareMathOperator{\Gal}{Gal}
\DeclareMathOperator{\GL}{GL}
\DeclareMathOperator{\Hom}{Hom}
\DeclareMathOperator{\Inn}{Inn}
\DeclareMathOperator{\Out}{Out}
\DeclareMathOperator{\Orth}{O}
\DeclareMathOperator{\Q}{Q}
\DeclareMathOperator{\Sym}{Sym}
\DeclareMathOperator{\SL}{SL}
\DeclareMathOperator{\SO}{SO}
\DeclareMathOperator{\Sp}{Sp}
\DeclareMathOperator{\SU}{SU}
\DeclareMathOperator{\Syl}{Syl}
\DeclareMathOperator{\U}{U}

\DeclareMathOperator{\cl}{cl}
\DeclareMathOperator{\ext}{ext}
\DeclareMathOperator{\intr}{int}

\DeclareMathOperator{\adj}{adj}
\DeclareMathOperator{\card}{card}
\DeclareMathOperator{\diag}{diag}
\DeclareMathOperator{\diam}{diam}
\DeclareMathOperator{\supp}{supp}
% need to complete %

\DeclareRobustCommand{\biggg}{\bBigg@\thr@@}
\DeclareRobustCommand{\Biggg}{\bBigg@{3.5}}
\DeclareRobustCommand{\bigggg}{\bBigg@\f@@r}
\DeclareRobustCommand{\Bigggg}{\bBigg@{4.5}}
\DeclareRobustCommand{\biggggg}{\bBigg@\f@v@}
\DeclareRobustCommand{\Biggggg}{\bBigg@{5.5}}

\DeclareRobustCommand\bigggl{\mathopen\biggg}
\DeclareRobustCommand\bigggm{\mathrel\biggg}
\DeclareRobustCommand\bigggr{\mathclose\biggg}
\DeclareRobustCommand\Bigggl{\mathopen\Biggg}
\DeclareRobustCommand\Bigggm{\mathrel\Biggg}
\DeclareRobustCommand\Bigggr{\mathclose\Biggg}
\DeclareRobustCommand\biggggl{\mathopen\bigggg}
\DeclareRobustCommand\biggggm{\mathrel\bigggg}
\DeclareRobustCommand\biggggr{\mathclose\bigggg}
\DeclareRobustCommand\Biggggl{\mathopen\Bigggg}
\DeclareRobustCommand\Biggggm{\mathrel\Bigggg}
\DeclareRobustCommand\Biggggr{\mathclose\Bigggg}
\DeclareRobustCommand\bigggggl{\mathopen\biggggg}
\DeclareRobustCommand\bigggggm{\mathrel\biggggg}
\DeclareRobustCommand\bigggggr{\mathclose\biggggg}
\DeclareRobustCommand\Bigggggl{\mathopen\Biggggg}
\DeclareRobustCommand\Bigggggm{\mathrel\Biggggg}
\DeclareRobustCommand\Bigggggr{\mathclose\Biggggg}

\DeclarePairedDelimiterX\@abs[1]\lvert\rvert{\ifblank{#1}{\:\cdot\:}{#1}}
\DeclarePairedDelimiterX\@norm[1]\lVert\rVert{\ifblank{#1}{\:\cdot\:}{#1}}
\DeclarePairedDelimiterX\@floor[1]\lfloor\rfloor{\ifblank{#1}{\:\cdot\:}{#1}}
\DeclarePairedDelimiterX\@ceil[1]\lceil\rceil{\ifblank{#1}{\:\cdot\:}{#1}}
\DeclarePairedDelimiterX\@nint[1]\lfloor\rceil{\ifblank{#1}{\:\cdot\:}{#1}}

\DeclarePairedDelimiter\@bra\langle\rvert
\DeclarePairedDelimiter\@ket\lvert\rangle
\DeclarePairedDelimiterX\@braket[3]\langle\rangle{\ifblank{#2}{#1\delimsize\vert\mathopen{}#3}{#1\delimsize\vert\mathopen{}#2\delimsize\vert\mathopen{}#3}}
\DeclarePairedDelimiterX\@ketbra[2]\lvert\rvert{#1\delimsize\rangle\delimsize\langle\mathopen{}#2}

\DeclarePairedDelimiterX\@rfrac[2]..{#1\delimsize\slash\mathopen{}#2}

\DeclarePairedDelimiterXPP\@eval[3]{}.\rvert{\ifblank{#2}{}{_{#2}}\ifblank{#3}{}{^{#3}}}{#1}

\DeclarePairedDelimiterX\@set[2]\lbrace\rbrace{\ifblank{#2}{#1}{#1\:\delimsize\vert\:\mathopen{}#2}}

\NewDocumentCommand\abs{O{}o}{\IfNoValueTF{#2}{\@abs*{#1}}{\@abs[#1]{#2}}}
\NewDocumentCommand\norm{O{}o}{\IfNoValueTF{#2}{\@norm*{#1}}{\@norm[#1]{#2}}}
\NewDocumentCommand\floor{O{}o}{\IfNoValueTF{#2}{\@floor*{#1}}{\@floor[#1]{#2}}}
\NewDocumentCommand\ceil{O{}o}{\IfNoValueTF{#2}{\@ceil*{#1}}{\@ceil[#1]{#2}}}
\NewDocumentCommand\nint{O{}o}{\IfNoValueTF{#2}{\@nint*{#1}}{\@nint[#1]{#2}}}

\NewDocumentCommand\bra{om}{\IfNoValueTF{#1}{\@bra*{#2}}{\@bra[#1]{#2}}}
\NewDocumentCommand\ket{om}{\IfNoValueTF{#1}{\@ket*{#2}}{\@ket[#1]{#2}}}
\NewDocumentCommand\braket{omO{}m}{\IfNoValueTF{#1}{\@braket*{#2}{#3}{#4}}{\@braket[#1]{#2}{#3}{#4}}}
\NewDocumentCommand\ketbra{omm}{\IfNoValueTF{#1}{\@ketbra*{#2}{#3}}{\@ketbra[#1]{#2}{#3}}}

\NewDocumentCommand\rfrac{omm}{\IfNoValueTF{#1}{\@rfrac*{#2}{#3}}{\@rfrac[#1]{#2}{#3}}}

\NewDocumentCommand\eval{omO{}O{}}{\IfNoValueTF{#1}{\@eval*{#2}{#3}{#4}}{\@eval[#1]{#2}{#3}{#4}}}

\NewDocumentCommand\set{omO{}}{\IfNoValueTF{#1}{\@set*{#2}{#3}}{\@set[#1]{#2}{#3}}}
% need to complete %

\def\eu{\symup{e}}
\def\iu{\symup{i}}
\def\piu{\symup{\pi}}
\def\gammau{\symup{\gamma}}
% need to complete %

\def\coloniff{\DOTSB\;:\Longleftrightarrow\;}
\def\iffcolon{\DOTSB\;\Longleftrightarrow:\;}

\DeclareDerivative{\fdv}{\symup{\delta}}
\DeclareDerivative{\adv}{\symup{\Delta}}
\DeclareDifferential{\fdif}{\symup{\delta}}
\DeclareDifferential{\adif}{\symup{\Delta}}

\renewcommand*\env@matrix[1][*\c@MaxMatrixCols c]{%
    \hskip -\arraycolsep
    \let\@ifnextchar\new@ifnextchar
    \array{#1}%
}

\RenewExpandableDocumentCommand\cline{d()m}{\IfNoValueTF{#1}{\@cline#2\@nil}{\addlinespace[0ex]\cmidrule[\arrayrulewidth](#1){#2}\addlinespace[-\belowrulesep]}}
\iffalse
\setmathfont[BoldFont=*,StylisticSet=8]{STIXTwoMath-Regular}
\setmathfont[BoldFont=*,range={scr,bfscr},StylisticSet=1]{STIXTwoMath-Regular}
\fi
\numberwithin{equation}{section}

\theoremstyle{plain}

\newtheorem{theorem}{\theoremname}[section]
\newtheorem{lemma}{\lemmaname}[section]
\newtheorem{corollary}{\corollaryname}[section]
\newtheorem{proposition}{\propositionname}[section]
\newtheorem{conjecture}{\conjecturename}[section]
\newtheorem{criterion}{\criterionname}[section]
\newtheorem{assertion}{\assertionname}[section]

\theoremstyle{definition}

\newtheorem{definition}{\definitionname}[section]
\newtheorem{condition}{\conditionname}[section]
\newtheorem{problem}{\problemname}[section]
\newtheorem{example}{\examplename}[section]
\newtheorem{exercise}{\exercisename}[section]
\newtheorem{algorithm}{\algorithmname}[section]
\newtheorem{question}{\questionname}[section]
\newtheorem{axiom}{\axiomname}[section]
\newtheorem{property}{\propertyname}[section]
\newtheorem{assumption}{\assumptionname}[section]
\newtheorem{hypothesis}{\hypothesisname}[section]

\theoremstyle{remark}

\newtheorem*{remark}{\remarkname}
\newtheorem*{remarks}{\remarksname}
\newtheorem*{note}{\notename}
\newtheorem*{notes}{\notesname}
\newtheorem*{notation}{\notationname}
\newtheorem*{notations}{\notationsname}
\newtheorem*{claim}{\claimname}
\newtheorem*{summary}{\summaryname}
\newtheorem*{acknowledgment}{\acknowledgmentname}
\newtheorem*{case}{\casename}
\newtheorem*{conclusion}{\conclusionname}

\newenvironment{solution}[1][\solutionname]{%
    \par
    %\normalfont \topsep6\p@\@plus6\p@\relax
    \trivlist
    \item[\hskip\labelsep
                \itshape
        #1\@addpunct{.}]\ignorespaces
}{\endtrivlist\@endpefalse}

\usetikzlibrary{scopes,calc,intersections}
\usetikzlibrary{3d}
\usetikzlibrary{cd}

\tikzset{every picture/.style={line cap=round,line join=round,smooth}}

%%%%%%%%%%%%%%%% Mathematics %%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%% Floats and Captions %%%%%%%%%%%%%%%%

\numberwithin{figure}{section}
\numberwithin{table}{section}

\graphicspath{{images/}}

\renewcommand{\tabularxcolumn}[1]{m{#1}}

%%%%%%%%%%%%%%%% Floats and Captions %%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%% Back Matter %%%%%%%%%%%%%%%%

\DeclarePrintbibliographyDefaults{heading=bibintoc}

\DeclareLanguageMapping{chinese}{english}

\indexsetup{noclearpage,firstpagestyle=fancy}

\makeindex[intoc,columns=2,columnseprule]

%%%%%%%%%%%%%%%% Back Matter %%%%%%%%%%%%%%%%

\endinput