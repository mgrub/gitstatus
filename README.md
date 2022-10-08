# gitstatus

This package allows to include information about a git-repository into a document.

## Introduction

If your LaTeX-document is version-controlled with git, you might encounter situations, where you want to include some information of your git-repository into your LaTeX-document - e.g. to keep track on who gave you feedback on which version of your document. 

## Options

- *gitdir* - custom git dir (can be relative), (default is ".git/", meaning your LaTeX document is in the top level of your repo)
- *watermark* - watermark with branch + hash on top of page (default: don't use watermark)
- *nowatermark* - same as watermark=false
- *novariables* - disable creation of variables (default: false)

## Variables

Apart from the option to add a watermark at the top of the page that mentions the current commit hash and branch-name, the package also provides variables with the same information for individual use. 
These variables are:

- *\gitdir*
- *\gitcommit*
- *\gitbranch*

## About

### Version

The package is currently at version v1.1.

### Maintainer

The code is created and maintained by Maximilian Gruber.

### License

This package is provided under the LaTeX Project Public License (LPPL).
