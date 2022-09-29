slides:
	latexmk -xelatex -pdfxe

preview:
	latexmk -xelatex -pdfxe -pvc

clean:
	latexmk -xelatex -pdfxe -c

distclean:
	latexmk -xelatex -pdfxe -C

.PHONY: slides preview clean distclean