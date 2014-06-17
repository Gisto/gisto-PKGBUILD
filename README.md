gisto-PKGBUILD
==============

AUR package for ArchLinux

> All packages need to include .AURINFO 

The easiest way to generate AUR package from PKGBUILD is `mkaurball`

### Generation of AUR package:

clone: https://github.com/falconindy/pkgbuild-introspection to the same directory with PKGBUILD

Run `./pkgbuild-introspection/make` - this will build mkaurball

Run `./pkgbuild-introspection/mkaurball` - this will create _PKG-NAME-VERSION.tar.gz_ archive - the one that need to be uploaded to AUR
