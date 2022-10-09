# Package Helpers

## Install

### via CTAN / your LaTeX-environment

Search for `gitstatus` and install from there. E.g. for TeXlive (Linux):

```bash
tlmgr install gitstatus
```

Note: The package was released in 2022, so older TeX-distributions will not cover it. 

### Local+Manual

Move into the root folder of this repository.
Extract the actual package `gitstatus.sty` with:

```bash
latex gitstatus.ins
```

This file can then be copied either to your local TeX-project

```bash
cp gitstatus.sty /your/local/TeX_project/
```

Alternativly, move it into your texmf-folder (tested with kubuntu 20.04 + texlive):

```bash
cd ~/texmf/
cp gitstatus.sty ~/texmf/tex/latex/local/
```

Note: find your texmf-folder with `kpsewhich -var-value=TEXMFHOME`

## Build Documentation

```bash
# extract sty
latex gitstatus.ins

# build PDF
pdflatex gitstatus.dtx
makeindex -s gind.ist -o gitstatus.ind gitstatus.idx
pdflatex gitstatus.dtx

# clean up
latexmk -c gitstatus.dtx
rm gitstatus.log gitstatus.sty gitstatus.xwm gitstatus.glo gitstatus.dvi
```

## Create zip for CTAN

Run the "Build Documentation" and then:

```bash
# remove old zip
rm gitstatus.zip

# create temporary directory
mkdir gitstatus
cp example.tex gitstatus.dtx gitstatus.ins LICENSE README.md gitstatus/

# zip the thing
zip gitstatus.zip gitstatus/*

# clean up
rm gitstatus/*
rmdir gitstatus
```
