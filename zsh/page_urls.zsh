#!/bin/zsh

page_html=$(phantomjs js/page_urls.js $1 $2 $3)
page_urls=$(python2 py2/get_page_urls.py $(echo $page_html)  | grep -Po '"http://bato.to/reader#\w+"' | grep -Po '[^"]+')
echo $page_urls
