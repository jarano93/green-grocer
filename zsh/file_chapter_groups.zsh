#!/bin/zsh

group_anchor=$(grep -Po '<a href="http://bato.to/group[^\n]+</a>' $1)
group=$(echo $group_anchor | grep -Po '>[^\n]+<' | grep -Po '[^>]+$' | grep -Po '^[^<]+')
echo $group
