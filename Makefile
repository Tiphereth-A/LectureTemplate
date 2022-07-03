objects = lecture slice
scripts = indent clean
latexmk = latexmk -cd -xelatex -synctex=1 -interaction=nonstopmode -file-line-error -halt-on-error -outdir=out -time

all: indent $(objects)
.PHONY: all $(scripts)

$(objects): % : %.tex
	$(latexmk) $<

$(scripts): % : script/%.sh
	sh $<
