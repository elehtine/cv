LATEXCMD = pdflatex -shell-escape -output-directory build

.PHONY: run
run: | build
	$(LATEXCMD) content/main.tex
	cp build/main.pdf main.pdf

build:
	mkdir -p build

.PHONY: clean
clean:
	rm -rf build
