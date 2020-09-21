

all: clean build


clean:
	rm -rf build main.pdf

build:
	mkdir -p build
	pdflatex -shell-escape -interaction=nonstopmode -shell-escape -output-directory=./build main.tex
	cp build/main.pdf .
