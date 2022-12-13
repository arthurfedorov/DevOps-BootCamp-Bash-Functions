#!/bin/bash

# Put your code here

pow(){
    let result="$1 ** $2"
    echo $result
}

print_log() {
  log_date=$(date "+%Y-%m-%d %H:%M")
  echo "[$log_date] $1"
}

shortest() {
  shortest_str="$1"

  for str in "$@"; do
      shortest_str="$str"
    fi
  done

  echo $shortest_str
}