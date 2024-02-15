(TeX-add-style-hook
 "index"
 (lambda ()
   (TeX-run-style-hooks
    "main/ramsey/existence"
    "main/ramsey/bounds")
   (LaTeX-add-labels
    "thm:gpp"))
 :latex)

