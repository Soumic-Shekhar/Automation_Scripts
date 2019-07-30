#!/bin/bash

echo 'Init ===>'
echo 'using imagemagic' 
echo 'if not installed: apt install imagemagic'

#path="$1" #location of input images

width="$1" #width of output images
height="$2" #height of output images

#echo "$width $height"

mkdir resized #output location
#cd "$path"
echo 'resizing:'
for file in *.*; do convert $file -resize "$width"x"$height" resized/resized-$file; done #batch converison using imagemagic
