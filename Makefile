main.pdf: *.tex
	pdflatex main.tex
	pdflatex main.tex

.PHONY: clean
clean:
	rm -f *.aux *.log *.toc
