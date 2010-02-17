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

VERSION=0.9
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
	-echo "Please do     cp $(ZIP).zip ocethesis.php ../GCocean-web/ocethesis"

clean:
	-rm *.aux $(DOC).lot $(DOC).lof $(DOC).toc $(DOC).dvi $(DOC).blg $(DOC).bbl *.log $(DOC).out $(DOC).ist $(DOC).glo
	-rm *~

#install:
#	scp ocethesis_*.zip ocethesis.php gcocean@graduatecoordinator.oceanography.dal.ca:public_www/ocethesis
