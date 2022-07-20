\tcbset{ postit/.style ={
    breakable,enhanced,
    before skip=2mm,after skip=3mm,
    colback=\tcb@@color!50,colframe=\tcb@@color!20!black,
    boxrule=0.4pt,
    drop fuzzy shadow,
    left=6mm,right=2mm,top=0.5mm,bottom=0.5mm,
    sharp corners,rounded corners=southeast,arc is angular,arc=3mm,
    parbox=false,
    underlay unbroken and last = {%
        \path[fill=tcbcolback!80!black]
        ([yshift=3mm]interior.south east) --++ (-0.4,-0.1) --++ (0.1,-0.2);
        \path[draw=tcbcolframe,shorten <=-0.05mm,shorten >=-0.05mm]
        ([yshift=3mm]interior.south east) --++ (-0.4,-0.1) --++ (0.1,-0.2);
        \path[fill=\tcb@@color!50!black,draw=none]
        (interior.south west) rectangle node[white]{\tcb@@icono} ([xshift=5.5mm]interior.north west);
        },
    underlay = {%
        \path[fill=\tcb@@color!50!black,draw=none]
        (interior.south west) rectangle node[white]{\tcb@@icono} ([xshift=5.5mm]interior.north west);
        }
    }
    }

    \theoremstyle{estiloteoreman}
    \newtheorem{ejem}{Ejemplo}
    \newtheorem*{obs}{\tikz \fill[colordef] (1ex,1ex) circle (3.5pt); Observaci\'on}
%%  Ambientes con recuadrost: |prop|, |cor|, |lem|, |ejer|.
    \newtheorem{prop}{Proposici\'on}
        \tcolorboxenvironment{prop}{%
            color=colordef,recuadrost,colback=gray!5,drop fuzzy shadow
        }
    \newtheorem{cor}[prop]{Corolario}
        \tcolorboxenvironment{cor}{%
            color=colordef,recuadrost,colback=gray!5,drop fuzzy shadow
        }
    \newtheorem{lem}[prop]{Lema}
        \tcolorboxenvironment{lem}{%
            color=colordef,recuadrost,colback=gray!5,drop fuzzy shadow
        }
    \newtheorem{ejer}{Ejercicio}
        \tcolorboxenvironment{ejer}{%
            color=colordef,recuadrost,colback=gray!5,drop fuzzy shadow
        }
%%  Ambientes con título aparte: |teo|.
\newtcolorbox{teo}[1][]
    {tipo=Teorema,contador=prop,color=colordef,recuadroctint={#1}}
%%  Ambientes con título aparte: |defi|.
\newcounter{defi}
\renewcommand{\thedefi}{\arabic{defi}}
\newtcolorbox{defi}[1][]
    {tipo=Definici\'on,contador=defi,color=colordef,recuadroctint={#1}}
%%  Ambientes con título aparte: |axioma|.
\newcounter{axioma}
\renewcommand{\theaxioma}{\arabic{axioma}}
\newtcolorbox{axioma}[1][]
    {tipo=Axioma,contador=axioma,color=colordef,recuadroctint={#1}}
%%  Ambientes advertencia: |advertencia|.
\newtcolorbox{advertencia}
    {color=yellow,postit}
}