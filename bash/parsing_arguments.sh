#!/usr/bin/env bash
#
# you can run this script as
# $ parsing_arguments.sh install --my_dir /home/myacc/mydir
#

set -euo pipefail

install() {
  echo "demo arg parsing script"
  while [[ $# > 0 ]]
  do
    case "$1" in
      -d|--my_dir)
        MY_DIR="$2"
        echo "set dir to ${MY_DIR}"
        shift
        ;;
      --help|*)
        echo "Options:"
        echo "        -d|--my_dir"
        echo "        --help"
        exit 1
        ;;        
    esac
    shift
  done

  echo "MY_DIR: ${MY_DIR}"
}

# Call the requested function and pass the arguments as-is
"$@"
