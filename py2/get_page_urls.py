#!/usr/bin/python2

import sys
from bs4 import BeautifulSoup as bs

def pages(args):
    html_doc = " ".join(args)
    soup = bs(html_doc, 'html.parser')
    print soup.find(id="page_select").prettify()

if __name__=='__main__':
    pages(sys.argv[1:])
