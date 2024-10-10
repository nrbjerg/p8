(TeX-add-style-hook
 "exact_values"
 (lambda ()
   (TeX-run-style-hooks
    "main/ramsey/graphs/graphs_for_small_ramsey_numbers")
   (LaTeX-add-labels
    "sec:exact_values"
    "thm:small_ramsey_numbers"
    "eq:R3_4"
    "eq:R3_5"
    "def:set_sum_free"
    "thm:R3_3_3"
    "tab:small_values"))
 :latex)

