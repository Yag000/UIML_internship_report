.PHONY: clean doc

uiml doc: UIML_internship_repport.pdf

%.pdf: %.tex %.bib %.sty
	pdflatex -shell-escape '$*.tex'
	bibtex '$*.aux'
	pdflatex -shell-escape '$*.tex'
	pdflatex -shell-escape '$*.tex'

clean:
	-rm *.out *.600pk *.pdf *.log *.aux *.bbl *.blg *.fs *.fls *.fdb_latexmk -r

