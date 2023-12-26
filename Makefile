.PHONY: clean

TEX=*.tex\
	globals/*.tex
BIB=globals/papers.bib

pnrs.pdf: $(TEX) $(BIB)
	latexmk -pdf -xelatex pnrs.tex

arxiv.tar.gz: pnrs.pdf
	mkdir -p arxiv/globals
	cp globals/*.tex arxiv/globals/
	cp globals/*.bib arxiv/globals/
	cp pnrs.tex      arxiv/pnrs.tex
	cp pnrs.bbl      arxiv/pnrs.bbl
	tar czf arxiv.tar.gz  arxiv

clean:
	latexmk -C

