#!/bin/zsh

readonly JS=$(dirname $0)/../js

page_html=$(phantomjs $JS/delayed_page.js $1 $2 $3)
page_urls=$(echo $page_html  | grep -Po 'http://bato.to/reader#\w+')
echo $page_urls
