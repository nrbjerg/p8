(TeX-add-style-hook
 "index"
 (lambda ()
   (TeX-run-style-hooks
    "main/ramsey/assymptotics/assymptotics"
    "main/ramsey/assymptotics/R3l_construction")
   (LaTeX-add-labels
    "sec:ass_ramsey"))
 :latex)

