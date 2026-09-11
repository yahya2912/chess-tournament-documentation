OUT_DIR := out
DOC := documentation.tex
PDF := $(OUT_DIR)/documentation.pdf

.PHONY: all clean distclean

all: $(PDF)

$(PDF): $(DOC) style/thga-db.sty
	mkdir -p $(OUT_DIR)
	TEXINPUTS=.:style//: latexmk -pdf -interaction=nonstopmode -halt-on-error -outdir=$(OUT_DIR) $(DOC)

clean:
	TEXINPUTS=.:style//: latexmk -c -outdir=$(OUT_DIR) $(DOC)

distclean:
	rm -rf $(OUT_DIR)
