;; .dir-locals.el
((org-mode
  . ((git-auto-commit-mode . 1)
     (org-export-in-background . nil)
     (eval . (add-to-list 'org-latex-classes
                          '("sn-jnl"
                            "\\documentclass[pdflatex,sn-basic]{sn-jnl}
[NO-DEFAULT-PACKAGES]
[NO-PACKAGES]
[EXTRA]"
                            ("\\section{%s}" . "\\section*{%s}")
                            ("\\subsection{%s}" . "\\subsection*{%s}")
                            ("\\subsubsection{%s}" . "\\subsubsection*{%s}")))))))
