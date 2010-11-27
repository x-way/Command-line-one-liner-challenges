#!/bin/sh

convert() {
  cat "$@"|iconv -f utf-8 -t ascii//translit
}

convert input.txt > actual.txt

${DIFF:-diff -q} actual.txt expected.txt

