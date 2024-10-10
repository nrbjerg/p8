(TeX-add-style-hook
 "index"
 (lambda ()
   (TeX-run-style-hooks
    "main/partition_regularity/van_der_waerden/proof"
    "main/partition_regularity/van_der_waerden/bounds"
    "main/partition_regularity/van_der_waerden/AP_mod")
   (LaTeX-add-labels
    "thm:van_der_waerden"
    "exmp:Van_Der_Waerden_2_2"
    "exmp:van_der_waerden_strengthend_version"
    "thm:strengthend_version_of_van_der_waerden"
    "eq:strengthend_van_der_waerden_1"
    "eq:strengthed_van_der_waerden_2"))
 :latex)

