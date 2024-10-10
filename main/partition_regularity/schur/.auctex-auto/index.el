(TeX-add-style-hook
 "index"
 (lambda ()
   (TeX-run-style-hooks
    "main/partition_regularity/schur/bounds_and_assymptotics")
   (LaTeX-add-labels
    "exmp:schur"
    "thm:additive_schur"
    "cor:schur_upper"
    "thm:multiplicative_schur"
    "thm:fermat_last_theorem_over_finite_field"))
 :latex)

