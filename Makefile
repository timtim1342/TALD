R_OPTS = --vanilla

.DEFAULT_GOAL: all
.PHONY: clean all

all: compile clean

docs/%.html: %.Rmd
	Rscript -e 'rmarkdown::render("$^")'
compile:
	Rscript compile_website.R
clean:
	rm -rf docs/data docs/html docs/tests docs/data docs/DESCRIPTION docs/LICENSE docs/Makefile
	