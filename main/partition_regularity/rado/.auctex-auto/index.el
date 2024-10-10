(TeX-add-style-hook
 "index"
 (lambda ()
   (TeX-run-style-hooks
    "main/partition_regularity/rado/systems")
   (LaTeX-add-labels
    "exmp:less_trivial_example"
    "thm:single_eq_rado"
    "eq:rado_single"
    "eq:proof_rado_single_1"
    "eq:proof_rado_single_2"
    "eq:rado_single_over_Q"
    "prop:rado_non_homo"
    "eq:non_homo"
    "NH1"
    "NH2"
    "eq:non_homo_rewritten"
    "eq:non_homo_rewritten_s0"))
 :latex)

