#!/usr/bin/env bash

shopt -s globstar

for i in ../../**/*.md
do
    ./pandoc.sh $i > $i.html
done


for j in ../../**/unit-*
do
  cp -r  $j ../../deployment/.
done
