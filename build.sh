#!/bin/bash

folder=`ls | grep style`
echo $folder

cd $folder
latexmk -quiet -pdf -bibtex example_paper
latexmk -c example_paper
rm example_paper.bbl
cd ..

zip -r $folder $folder


