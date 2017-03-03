#!/bin/zsh

group_anchor=$(echo $1 | grep -Po '<a href="http://bato.to/group[^\n]+</a>')
group=$(echo $group_anchor | grep -Po '>[^\n]+<' | grep -Po '[^>]+$' | grep -Po '^[^<]+')
echo $group
