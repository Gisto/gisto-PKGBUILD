#!/bin/bash
git clone https://github.com/falconindy/pkgbuild-introspection
cd pkgbuild-introspection && make
cd ..
./pkgbuild-introspection/mkaurball

echo 'YAY'
