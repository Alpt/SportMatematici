#!/bin/bash

for i in `ls -1 *.tex`; do

	
	if [ "$i" = "gpl.tex" ]; then continue; fi

	echo $i
	#latex  --interaction nonstopmode $i &> /dev/null
	#latex  --interaction nonstopmode $i &> /dev/null && \
	#echo DVI compiled

	pdflatex --interaction nonstopmode $i &> /dev/null
	pdflatex --interaction nonstopmode $i &> /dev/null && \
        pdflatex $i &> /dev/null && \
        echo PDF compiled
done
