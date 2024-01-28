LATEXCMD = pdflatex -shell-escape -output-directory build

.PHONY: all
all: finnish english

.PHONY: help
help:
	@echo "Available commands are:"
	@echo "all         - create Finnish and English versions"
	@echo "finnish.pdf - create Finnish version"
	@echo "english.pdf - create English version"
	@echo "clean       - remove unnecessary build files"

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
