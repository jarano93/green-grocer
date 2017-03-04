#!/bin/zsh

# forgive me for my wrongs
pcregrep -M '<tr class="row lang_English[^\n]+\n[^\n]+\n[^\n]+\n[^\n]+\n[^\n]+\n[^\n]+\n[^\n]+' $1 | grep -Po '<a.+</a>' > "$2"
