all: lecture slice

clean:
	rm -rf out/*.{aux,bbl,bcf,blg,cb,cb2,fls,fmt,fot,lb,lof,log,lot,nav,out,pre,snm,synctex,synctex.gz,toc,vrb}

indent:
	latexindent lecture.tex -o lecture.tex
	latexindent slice.tex -o slice.tex

lecture:
	xelatex -synctex=1 -interaction=nonstopmode -output-directory=out -file-line-error lecture.tex
	bibtex -include-directory=bib out\lecture
	xelatex -synctex=1 -interaction=nonstopmode -output-directory=out -file-line-error lecture.tex
	xelatex -synctex=1 -interaction=nonstopmode -output-directory=out -file-line-error lecture.tex

slice:
	xelatex -synctex=1 -interaction=nonstopmode -file-line-error slice.tex
	bibtex -include-directory=bib slice
	xelatex -synctex=1 -interaction=nonstopmode -file-line-error slice.tex
	xelatex -synctex=1 -interaction=nonstopmode -file-line-error slice.tex
