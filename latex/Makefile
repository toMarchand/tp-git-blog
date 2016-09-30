KEEP=.svg|.tex|Makefile
INIT=*.odt
CLS=*~ *.log *.aux *.out *.bak *.toc *.pl
TEXFILES = $(wildcard *.tex)
SVGFILES = $(wildcard *.svg)

all: ps

%.pdf: %.tex
	pdflatex  $<
	pdflatex  $<

%_img.pdf: %.svg
	inkscape -f $< --export-pdf=$@

clean:
	find . -maxdepth 1 -type f |egrep -v '($(KEEP))$$' | xargs rm -f	

pdf: img $(patsubst %.tex,%.pdf,$(TEXFILES))
	cp *.pdf ../public/

img: $(patsubst %.svg,%_img.pdf,$(SVGFILES)) 
