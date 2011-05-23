main.pdf: *.tex
	latex main.tex
	TEX=latex mpost *.mp
	latex main.tex
	latex main.tex
	dvips main.dvi
	ps2pdf main.ps

.PHONY: clean
clean:
	rm -f figures.* *.aux *.log *.toc *.dvi *.ps *.pdf
