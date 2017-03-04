#!/bin/zsh

name_anchor=$(grep -Po '<a href="http://bato.to/reader#[^\n]+</a>' $1)
names=$(echo $name_anchor | grep -Po '<img[^\n]+</a>' | grep -Po '>[^\n]+<' | grep -Po '[^>]+$' | grep -Po '^[^<]+')
echo $names
