.PHONY: clean

TEX=pnrs.tex\
	globals/*.tex\
    parts/*.tex
BIB=globals/papers.bib

pnrs.pdf: $(TEX) $(BIB)
	latexmk -pdf -xelatex pnrs.tex


# Create a bibtex file by contatenating all the bib files
# inside the transducer-bib directory
globals/papers.bib: transducer-bib/*.bib
	cat transducer-bib/*.bib > globals/papers.bib

camera-ready.tex: pnrs.pdf
	latexpand -o camera-ready.tex \
			  --empty-comments \
			  pnrs.tex

camera-ready.tar.gz: camera-ready.tex
	mkdir -p camera-ready/tikz
	cp camera-ready.tex camera-ready/
	cp short.bib camera-ready/
	cp ./lipics-v2021.cls camera-ready/
	cp ./tikz/class-inclusions.tex camera-ready/tikz/
	cp ./orcid.pdf camera-ready/
	cp ./orcid.pdf camera-ready/orcid
	cp ./cc-by.pdf camera-ready/
	cp ./lipics-logo-bw.pdf camera-ready/
	cp ./LICENSE camera-ready/
	# Create an archive in tar.gz format
	tar -czf camera-ready.tar.gz camera-ready/*


# Create an arxiv file by inlining everything
arxiv.tex: pnrs.pdf
	latexpand -o arxiv.tex \
			  --empty-comments \
			  --expand-bbl pnrs.bbl \
			  pnrs.tex

arxiv.tar.gz: arxiv.tex
	mkdir -p arxiv
	mkdir -p arxiv/tikz
	cp arxiv.tex arxiv/
	cp ./lipics-v2021.cls arxiv/
	cp ./tikz/class-inclusions.tex arxiv/tikz/
	cp ./orcid.pdf arxiv/
	cp ./orcid.pdf arxiv/orcid
	cp ./cc-by.pdf arxiv/
	cp ./lipics-logo-bw.pdf arxiv/
	cp ./LICENSE arxiv/
	# Create an archive in tar.gz format
	# with the content of the arxiv directory
	# and not the directory itself
	tar -czf arxiv.tar.gz arxiv/*

clean:
	latexmk -C

