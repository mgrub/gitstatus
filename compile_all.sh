#!/bin/bash

# extract sty
latex gitstatus.ins

# compile documentation
pdflatex gitstatus.dtx
makeindex -s gind.ist -o gitstatus.ind gitstatus.idx
pdflatex gitstatus.dtx

# clean up
latexmk -c gitstatus.dtx
rm gitstatus.log gitstatus.sty gitstatus.xwm gitstatus.glo gitstatus.dvi

# prepare CTAN zip
rm gitstatus.zip
mkdir gitstatus
cp example.tex gitstatus.dtx gitstatus.ins LICENSE README.md gitstatus/
zip gitstatus.zip gitstatus/*
rm gitstatus/*
rmdir gitstatus