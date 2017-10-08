.PHONY: clean all

all: cheatsheet.pdf

cheatsheet.pdf: cheatsheet.tex
	xelatex cheatsheet
	xelatex cheatsheet
	xelatex cheatsheet

clean:
	-rm cheatsheet.aux cheatsheet.log cheatsheet.pdf
