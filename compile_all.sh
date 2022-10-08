#!/bin/bash

# extract sty
latex gitstatus.ins

# compile documentation
pdflatex gitstatus.dtx
makeindex -s gind.ist -o gitstatus.ind gitstatus.idx
pdflatex gitstatus.dtx