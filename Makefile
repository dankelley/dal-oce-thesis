LATEX=pdflatex
#$(LATEX)=$(LATEX)
DOC=mythesis
all: FORCE
	$(LATEX) $(DOC)
	bibtex $(DOC)
	$(LATEX) $(DOC)
	$(LATEX) $(DOC)
	$(LATEX) $(DOC)
FORCE:

VERSION=0.4
LIB=ocethesis.cls ocethesis.bst ocethesisbib.sty Makefile README.txt README.pdf
EXAMPLE=$(DOC).tex chapter1.tex appendix1.tex abstract.tex acknowledgment.tex literature.bib symbols.tex figure1.pdf figure1.ps
FILES=$(LIB) $(EXAMPLE)
ZIP=ocethesis_$(VERSION)
dist:
	rm -rf $(ZIP)
	rm -f $(ZIP).zip
	mkdir $(ZIP)
	cp $(FILES) $(ZIP)
	zip -r $(ZIP).zip $(ZIP)
	rm -rf $(ZIP)
web:
	make dist
	rsync -avzC -e ssh $(ZIP).zip patch* style.css ocethesis.php /Users/kelley/Sites/graduatecoordinator/ocethesis
	chmod og-r /Users/kelley/Sites/ocethesis/*
	sudo chmod +a "www allow read" /Users/kelley/Sites/ocethesis/*

clean:
	-rm *.aux $(DOC).lot $(DOC).lof $(DOC).toc $(DOC).dvi $(DOC).blg $(DOC).bbl *.log $(DOC).out $(DOC).ist $(DOC).glo
	-rm *~
