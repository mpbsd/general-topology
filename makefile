TEX_ENGINE = xelatex
BIB_ENGINE = bibtex
OPR_SYSTEM = $(shell uname -s)

ifeq ($(OPR_SYSTEM), Darwin)
	DOC_VIEWER = open -a Preview
else
	DOC_VIEWER = zathura
endif

build:
	$(TEX_ENGINE) main
	$(BIB_ENGINE) main
	$(TEX_ENGINE) main
	$(TEX_ENGINE) main
	$(DOC_VIEWER) main.pdf

clean:
	rm main.aux main.bbl main.blg main.log main.out main.pdf main.toc
