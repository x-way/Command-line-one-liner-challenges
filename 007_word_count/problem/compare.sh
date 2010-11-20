#!/bin/sh

convert() {
  cat "$@"|tr -C '[:alpha:]' '\n'|egrep -i '^the$'|wc -l
}

convert input.txt > actual.txt

${DIFF:-diff -w -q} actual.txt expected.txt

