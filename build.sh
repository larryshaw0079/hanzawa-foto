#!/bin/zsh
rm -rf images/thumbs/*
for i in $(ls images/fulls/*)
do
convert ${i} -resize 640x360 images/thumbs/$(basename ${i})
done
git add .
git commit -m "update"
git push -u origin gh-pages

