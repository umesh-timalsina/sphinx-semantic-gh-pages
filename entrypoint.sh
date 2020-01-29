#!/bin/bash
conda env create --file "$1"
source activate "$2"
git clone https://github.com/umesh-timalsina/sphinxcontrib-versioning
cd sphinxcontrib-versioning || exit 1
git checkout -b patch-sphinx-2.0.0 origin/patch-sphinx-2.0.0
pip install -e .
cd ..
sphinx-versioning build -r  "${GITHUB_REF##*/}"  "$3" "$4"
touch "$4"/.nojekyll
