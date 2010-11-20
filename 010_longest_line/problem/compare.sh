#!/bin/sh

convert() {
  cat "$@"|awk 'BEGIN{m=0}{if(length($0)>m){m=length($0)}}END{print m}'
}

convert input.txt > actual.txt

${DIFF:-diff -q} actual.txt expected.txt

