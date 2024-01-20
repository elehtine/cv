LATEXCMD = pdflatex -shell-escape -output-directory build

.PHONY: all
all: finnish.pdf english.pdf

.PHONY: help
help:
	@echo "Available commands are:"
	@echo "all         - create Finnish and English versions"
	@echo "finnish.pdf - create Finnish version"
	@echo "english.pdf - create English version"
	@echo "clean       - remove unnecessary build files"

finnish.pdf: | build
	$(LATEXCMD) content/finnish.tex
	cp build/finnish.pdf finnish.pdf

english.pdf: | build
	$(LATEXCMD) content/english.tex
	cp build/english.pdf english.pdf

build:
	mkdir -p build

.PHONY: clean
clean:
	rm -rf build
