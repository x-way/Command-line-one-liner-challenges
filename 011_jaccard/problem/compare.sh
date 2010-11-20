#!/bin/sh

convert() {
  echo "`comm -1 -2 $@|wc -l` / `cat $@|sort|uniq|wc -l`"|bc -l
}

convert input1.txt input2.txt > actual.txt

${DIFF:-diff -q} actual.txt expected.txt

