(TeX-add-style-hook
 "index"
 (lambda ()
   (TeX-run-style-hooks
    "main/ramsey/existence"
    "main/ramsey/upper"
    "main/ramsey/prob"
    "main/ramsey/exact_values"
    "main/ramsey/assymptotics/index")
   (LaTeX-add-labels
    "chap:graph_ramsey"
    "rem:color_sets"
    "rem:correspondence_between_colorings_and_partition"
    "thm:gpp"
    "def:cliques_and_neighbours"
    "exmp:cliques_and_neighbours"
    "fig:cliques_and_neighbours"))
 :latex)

