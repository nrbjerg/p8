(TeX-add-style-hook
 "books"
 (lambda ()
   (LaTeX-add-bibitems
    "rtoi"
    "emogrt"
    "rt"
    "graph_theory"
    "alg_lauritzen"
    "proofs_from_the_book"))
 '(or :bibtex :latex))

