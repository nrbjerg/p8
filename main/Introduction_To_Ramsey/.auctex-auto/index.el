(TeX-add-style-hook
 "index"
 (lambda ()
   (TeX-run-style-hooks
    "main/Introduction_To_Ramsey/ramsey"
    "main/Introduction_To_Ramsey/schur")
   (LaTeX-add-labels
    "thm:gpp"))
 :latex)

