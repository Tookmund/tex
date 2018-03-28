TEXNAME?=main
all: $(TEXNAME).pdf

view:
	firefox $(TEXNAME).pdf

%.pdf: %.tex
	lualatex $^

clean:
	rm -f $(TEXNAME).aux $(TEXNAME).log $(TEXNAME).pdf

.PHONY: all view clean
