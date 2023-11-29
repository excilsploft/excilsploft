SHELL := /bin/sh
FILE_PREFIX := kylejones
TEMPLATE_TEX := $(addsuffix .tex, $(FILE_PREFIX))
TEMPLATE_MD := $(addsuffix .md, $(FILE_PREFIX))
DATAFILE := data.md
PDF := $(addsuffix .pdf, $(FILE_PREFIX))
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

