.PHONY: clean

TEX=*.tex\
	globals/*.tex
BIB=globals/papers.bib

pnrs.pdf: $(TEX) $(BIB)
	latexmk -pdf -xelatex pnrs.tex

arxiv.tar.gz: pnrs.pdf
	mkdir -p arxiv/globals
	mkdir -p arxiv/tikz
	mkdir -p arxiv/parts
	mkdir -p arxiv/transducer-bib
	cp tikz/*.tex    arxiv/tikz/
	cp globals/*.tex arxiv/globals/
	cp globals/*.kl  arxiv/globals/
	cp parts/*.tex arxiv/parts/
	cp globals/*.bib arxiv/globals/
	cp transducer-bib/*.bib arxiv/transducer-bib/
	cp ./lipics-v2021.cls arxiv/
	cp ./orcid.pdf arxiv/
	cp ./orcid.pdf arxiv/orcid
	cp ./cc-by.pdf arxiv/
	cp ./lipics-logo-bw.pdf arxiv/
	cp ./LICENSE arxiv/
	cp pnrs.tex      arxiv/pnrs.tex
	cp pnrs.bbl      arxiv/pnrs.bbl
	# Create an archive in tar.gz format
	# with the content of the arxiv directory
	# and not the directory itself
	tar -czf arxiv.tar.gz arxiv/*

clean:
	latexmk -C

