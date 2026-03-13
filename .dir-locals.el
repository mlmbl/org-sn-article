;; .dir-locals.el
((org-mode
  . ((git-auto-commit-mode . 1)
     (org-export-in-background . nil)
     (org-latex-compiler . "pdflatex")
     (org-latex-pdf-process .
	   ("latexmk -norc -r .latexmkrc -pdf -interaction=nonstopmode %f"))
     (org-latex-packages-alist
      . (("T1" "fontenc" t)
	 ("utf8" "inputenc" t)
	 ("" "graphicx" t)
         ("" "multirow" t)
         ("" "amsmath,amssymb,amsfonts" t)
         ("" "amsthm" t)
         ("" "mathrsfs" t)
         ("title" "appendix" t)
         ("" "xcolor" t)
         ("" "textcomp" t)
         ("" "manyfoot" t)
         ("" "booktabs" t)
         ("" "algorithm" t)
         ("" "algorithmicx" t)
         ("" "algpseudocode" t)
         ("" "listings" t)))
     (eval . (add-to-list 'org-latex-classes
                          '("sn-jnl"
                            "\\documentclass{sn-jnl}
[NO-DEFAULT-PACKAGES]
[PACKAGES]
\\theoremstyle{thmstyleone}
\\newtheorem{theorem}{Theorem}
\\newtheorem{proposition}[theorem]{Proposition}
\\theoremstyle{thmstyletwo}
\\newtheorem{example}{Example}
\\newtheorem{remark}{Remark}
\\theoremstyle{thmstylethree}
\\newtheorem{definition}{Definition}
\\raggedbottom
[EXTRA]
"

                            ("\\section{%s}" . "\\section*{%s}")
                            ("\\subsection{%s}" . "\\subsection*{%s}")
                            ("\\subsubsection{%s}" . "\\subsubsection*{%s}")))))))
