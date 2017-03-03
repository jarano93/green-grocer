#!/usr/bin/python2

import sys
from bs4 import BeautifulSoup as bs

def series_name(args):
    html_doc = " ".join(args)
    soup = bs(html_doc, 'html.parser')
    print soup.find("h1", class_="ipsType_pagetitle").string[1:-1]

if __name__=='__main__':
    series_name(sys.argv[1:])
