#!/bin/zsh

image_html=$(phantomjs js/reader_image_html.js $1 $2 $3)
image_src=$(echo $image_html | grep -Po 'src="[^\n]+" alt=' | grep -Po '"[^\n]+"' | grep -Po '[^"]+')
wget -q -P $4 "$image_src"
