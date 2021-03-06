objects = lecture slice
xelatex = xelatex -synctex=1 -interaction=nonstopmode -file-line-error -include-directory=class -output-directory=out
bibtex = bibtex -include-directory=bib

all: clean $(objects)
.PHONY: all indent clean

$(objects): % : %.tex
	$(xelatex) $<
	$(bibtex) out\$@
	$(xelatex) $<
	$(xelatex) $<

indent: $(addsuffix .tex,$(objects))
	-$(foreach fn,$^,latexindent $(fn) -o $(fn);)

clean:
	-rm -f out/*.{aux,bbl,bcf,blg,cb,cb2,fls,fmt,fot,lb,lof,log,lot,nav,out,pre,snm,synctex,synctex.gz,toc,vrb}
