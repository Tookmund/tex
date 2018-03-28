TEXNAME?=main
all: $(TEXNAME).pdf

view:
	xdg-open $(TEXNAME).pdf

%.pdf: %.tex
	lualatex $^

clean:
	rm -f $(TEXNAME).aux $(TEXNAME).log $(TEXNAME).pdf

.PHONY: all view clean
