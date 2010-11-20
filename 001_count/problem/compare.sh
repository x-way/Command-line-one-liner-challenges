#!/bin/sh

convert() {
  cat "$@" |sort|uniq -c|awk '{print $2,$1}'|sort -n
}

convert input.txt > actual.txt

${DIFF:-diff -q} actual.txt expected.txt

