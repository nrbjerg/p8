(TeX-add-style-hook
 "aautitlepage"
 (lambda ()
   (TeX-run-style-hooks
    "calc"
    "lastpage")
   (TeX-add-symbols
    '("projectinfo" 7)
    '("aautitlepage" 3))
   (LaTeX-add-lengths
    "titlepageleftcolumnwidth"
    "titlepagerightcolumnwidth"))
 :latex)

