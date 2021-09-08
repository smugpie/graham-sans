#!/bin/bash
rm -rf build/*

python3.9 -m fontmake -m sources/1-drawing/DesignSpace-UFO/GrahamSans.designspace -o variable --output-dir build/variable
python3.9 -m fontmake -i -m sources/1-drawing/DesignSpace-UFO/GrahamSans.designspace -o otf --output-dir build/otf
python3.9 -m fontmake -i -m sources/1-drawing/DesignSpace-UFO/GrahamSans.designspace -o ttf --output-dir build/ttf

# Fix missing digital signature
gftools fix-dsig build/variable/GrahamSans-VF.ttf --autofix
gftools fix-dsig build/otf/* --autofix
gftools fix-dsig build/ttf/* --autofix

# Fix unwanted tables
gftools fix-unwanted-tables build/variable/GrahamSans-VF.ttf
gftools fix-unwanted-tables build/otf/*
gftools fix-unwanted-tables build/ttf/*

cd scripts || exit
python3.9 buildWebfonts.py
cd ..

