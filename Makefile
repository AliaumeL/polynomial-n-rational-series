.PHONY: clean

TEX=pnrs.tex\
  	globals/*.tex\
		globals/knowledges.kl \
		short.bib \
    parts/*.tex


pnrs.tex: paper.md paper-meta.yaml
	pandoc -t latex \
		--output pnrs.tex \
		--defaults arxiv-plain \
		paper.md

pnrs.pdf: $(TEX) 
	# use a build/ directory for latexmk
	latexmk -pdf -xelatex \
		-output-directory=build \
		pnrs.tex
	mv build/pnrs.pdf pnrs.pdf


# Create a bibtex file by contatenating all the bib files
# inside the transducer-bib directory
globals/papers.bib: transducer-bib/*.bib
	cat transducer-bib/*.bib > globals/papers.bib

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

