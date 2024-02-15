##
# Project Title
#
# @file
# @version 0.1
default: build

build:
	pdflatex master.tex
	bibtex master
	pdflatex master.tex
	pdflatex master.tex

clean:
	-rm *.aux
	-rm *.log
	-rm *.bbl
	-rm *.blg
	-rm *.out
	-rm *.toc

# end
