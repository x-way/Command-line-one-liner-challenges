#!/bin/sh

convert() {
  cat "$@" |awk '{print NR,$0}'|sort -rn|sed 's/^[0-9][0-9]* //'|awk 'BEGIN{out=1}/^ *$/{out=0}out==1{print NR,$0}'|sort -rn|sed 's/^[0-9][0-9]* //'
}

convert input.txt > actual.txt

${DIFF:-diff -q} actual.txt expected.txt

