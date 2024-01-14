LATEXCMD = pdflatex -shell-escape -output-directory build

.PHONY: all
all: finnish english

.PHONY: finnish
finnish: | build
	$(LATEXCMD) content/finnish.tex
	cp build/finnish.pdf finnish.pdf

.PHONY: english
english: | build
	$(LATEXCMD) content/english.tex
	cp build/english.pdf english.pdf

build:
	mkdir -p build

.PHONY: clean
clean:
	rm -rf build
