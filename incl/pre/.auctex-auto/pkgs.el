(TeX-add-style-hook
 "pkgs"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("fontenc" "T1") ("inputenc" "utf8") ("natbib" "square" "numbers") ("xcolor" "dvipsnames") ("algorithm" "chapter") ("algpseudocode" "noend") ("geometry" "margin=3cm") ("appendix" "toc" "page") ("background" "some") ("ulem" "normalem")))
   (add-to-list 'LaTeX-verbatim-environments-local "lstlisting")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "lstinline")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "href")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "lstinline")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "fontenc"
    "inputenc"
    "babel"
    "natbib"
    "hyperref"
    "amsmath"
    "cleveref"
    "xpatch"
    "mathtools"
    "amssymb"
    "amsthm"
    "bbm"
    "bm"
    "xcolor"
    "graphicx"
    "pagecolor"
    "booktabs"
    "caption"
    "subcaption"
    "tikz"
    "algorithm"
    "algpseudocode"
    "listings"
    "microtype"
    "emptypage"
    "fancyhdr"
    "titlesec"
    "geometry"
    "appendix"
    "background"
    "enumerate"
    "enumitem"
    "multirow"
    "DejaVuSansMono"
    "ulem"
    "incl/pre/ext/aautitlepage"
    "lastpage"
    "makecell"
    "tocbasic"))
 :latex)

