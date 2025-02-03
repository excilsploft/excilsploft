\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{res}[2021-11-08 Resume Template]
\LoadClass[a4paper]{article}


\RequirePackage[margin=1.0in]{geometry}
\RequirePackage[OT1]{fontenc}
\RequirePackage{titlesec}
\RequirePackage{xcolor}
\RequirePackage[hidelinks]{hyperref}

\pagestyle{empty}
%\renewcommand*\familydefault{\ttdefault}
\renewcommand*\familydefault{\sfdefault}
\renewcommand\labelitemi{\tiny$\bullet$}

\definecolor{kyle_orange}{RGB}{255,130,0}
\definecolor{kyle_rust}{RGB}{92,12,12}
\definecolor{kyle_gray}{RGB}{228,228,228}
\definecolor{kyle_black}{RGB}{1,1,1}


% section format
\titleformat{\section}           % customized section commmand
    {\Large\scshape\raggedright} % large, small capitals, left aligned
    {}{0em}                      % optional prefix
    {}                           % optional insert code prior to heading
[\color{kyle_rust}\titlerule]    % ruled line 

% subsection format
\titleformat{\subsection}        % customized section commmand
    {\large\scshape\raggedright} % large, small capitals, left aligned
    {}{0em}                      % optional prefix
    {}                           % optional insert code prior to heading


\newcommand{\datedsection}[2]{%
  \section[#1]{#1 \hfill #2}%
}

\newcommand{\datedsubsection}[2]{%
  \subsection[#1]{#1 \hfill #2}%
}

\newcommand{\name}[1]{%
 \noindent
  \Huge{#1}%
}

\newcommand{\contact}[2]{%
   \\
   \large\href{mailto:#1}{#1}\\
   \large\href{#2}{#2}%
}

\newcommand{\workitems}[5]{%
   \begin{itemize}
   \setlength\itemsep{-0.5em}
   \item\normalsize{#1}
   \item\normalsize{#2}
   \item\normalsize{#3}
   \item\normalsize{#4}
   \item\normalsize{#5}
   \end{itemize}%
}

