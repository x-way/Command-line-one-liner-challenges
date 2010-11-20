#!/bin/sh

convert() {
  cat "$@"|sed '/^$/d'
}

convert input.txt > actual.txt

${DIFF:-diff -q} actual.txt expected.txt

