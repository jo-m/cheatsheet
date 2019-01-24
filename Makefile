.PHONY: clean all

all: cheatsheet_mac.pdf cheatsheet_linux.pdf

cheatsheet_mac.pdf: cheatsheet_mac.tex macros.tex
	xelatex cheatsheet_mac

cheatsheet_linux.pdf: cheatsheet_linux.tex macros.tex
	xelatex cheatsheet_linux

clean:
	-rm cheatsheet_mac.aux cheatsheet_mac.log cheatsheet_mac.pdf
	-rm cheatsheet_linux.aux cheatsheet_linux.log cheatsheet_linux.pdf
