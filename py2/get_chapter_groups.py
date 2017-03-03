#!/usr/bin/python2

import sys
from bs4 import BeautifulSoup as bs

def chapter_names(args):
    html_doc = " ".join(args)
    soup = bs(html_doc, 'html.parser')
    rows = soup.find_all('tr', class_='lang_English')
    for i in xrange(len(rows) - 1, -1, -1):
        row_list = rows[i].prettify().split('\n')
        print row_list[14].lstrip()

if __name__=='__main__':
    chapter_names(sys.argv[1:])
