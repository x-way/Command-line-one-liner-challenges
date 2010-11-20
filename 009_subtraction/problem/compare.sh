#!/bin/sh

convert() {
  cat "$@"|sort|uniq -u
}

convert input1.txt input2.txt input2.txt > actual.txt

${DIFF:-diff -q} actual.txt expected.txt

