#!/bin/sh

convert() {
  cat "$@"|tr '\n' ','|sed 's/,$//'
}

convert input.txt > actual.txt

${DIFF:-diff -q} actual.txt expected.txt

