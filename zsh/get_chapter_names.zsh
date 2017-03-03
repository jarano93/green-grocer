#!/bin/zsh

name_anchor=$(echo $1 | grep -Po '<a href="http://bato.to/reader#[^\n]+</a>')
names=$(echo $name_anchor | grep -Po '<img[^\n]+</a>' | grep -Po '>[^\n]+<' | grep -Po '[^>]+$' | grep -Po '^[^<]+')
echo $names
