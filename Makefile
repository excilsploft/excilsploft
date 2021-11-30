SHELL := /bin/sh
TEMPLATE_TEX := kylejones.tex
TEMPLATE_MD := kylejones.md
DATAFILE := data.md
PDF := kylejones.pdf
MARKDOWN := README.md

default: $(PDF) $(MARKDOWN)


$(PDF): $(TEMPLATE_TEX)
	pandoc $(DATAFILE) --template $(TEMPLATE_TEX) -o $@

$(MARKDOWN): $(TEMPLATE_MD)
	pandoc $(DATAFILE) --template $(TEMPLATE_MD) -o $@


.PHONY: clean
clean:
	@rm $(PDF) || true
	@rm $(MARKDOWN) || true

