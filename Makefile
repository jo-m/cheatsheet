.PHONY: clean all

all: cheatsheet.pdf

cheatsheet.pdf: cheatsheet.tex
	xelatex cheatsheet

clean:
	-rm cheatsheet.aux cheatsheet.log cheatsheet.pdf
