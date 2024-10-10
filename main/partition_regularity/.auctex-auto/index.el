(TeX-add-style-hook
 "index"
 (lambda ()
   (TeX-run-style-hooks
    "main/partition_regularity/van_der_waerden/index"
    "main/partition_regularity/schur/index"
    "main/partition_regularity/rado/index")
   (LaTeX-add-labels
    "chap:partition_regularity"
    "def:partition_regularity"
    "statement_a"
    "statement_b"
    "lem:compactness_principle"
    "thm:compactness_principle"))
 :latex)

