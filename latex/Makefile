CLEAN=*~ *.rtf *.ps *.log *.dvi *.aux *.pdf *.out *.html *.css *.bak *.toc *.pl *.4ct *.4tc *.lg *.sxw *.tmp *.xref *.idv *.tns
INIT=*.odt
CLS=*~ *.log *.aux *.out *.bak *.toc *.pl
TEXFILES = $(wildcard *.tex)
INPUTFILES = $(wildcard input/*.tex)
SQLFILES = $(wildcard *.sql)
PSFILES = $(patsubst %.tex,%.ps,$(TEXFILES))

all: ps

%.pdf: %.tex
	pdflatex  $<
	pdflatex  $<

clean:
	-rm -f $(CLEAN)

pdf: $(patsubst %.tex,%.pdf,$(TEXFILES)) 
	cp *.pdf ../public/
