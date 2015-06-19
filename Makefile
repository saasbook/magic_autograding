OUT = magic
TEX = pdflatex
BIBTEX = bibtex

all: $(OUT).pdf

.DELETE_ON_ERROR:
$(OUT).pdf: $(wildcard *.tex) $(wildcard figs/*) $(OUT).bib
	$(TEX) $(OUT)
	$(BIBTEX) $(OUT)
	$(TEX) $(OUT)
	$(TEX) $(OUT)

clean: 
	rm -f ${OUT}.pdf *.bbl *.bcf *.aux *.blg *.log *.synctex.gz *.out

TAGS:
	etags *.tex *.bib
