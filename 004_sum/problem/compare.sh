#!/bin/sh

convert() {
  cat "$@"|awk '{s+=$1}END{print s}'
}

convert input.txt > actual.txt

${DIFF:-diff -q} actual.txt expected.txt

