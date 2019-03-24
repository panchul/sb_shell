#!/bin/bash
set -e

function somefunc {
	echo "somefunc"
}

echo "some utility"

case "$1" in
  something)
    echo "something ${@:1}"
    ;;
  something1)
    echo "something1 ${@:1}"
    somefunc
    ;;
  *)
    echo $"Usage: $0 {something|something1}"
    exit 1
esac
