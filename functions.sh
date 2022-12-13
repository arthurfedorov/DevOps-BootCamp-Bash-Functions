#!/bin/bash

# Put your code here

# Develop a pow() function that takes two arguments (a, b) and raises the first
#argument to the power of the second (a^b).

pow(){
    let result="$1 ** $2"
    echo $result
}

# Develop a print_log() function that takes a string as an argument and outputs 
# the same string with the date at the beginning. In order for the automatic check 
# to work, the string must be in this format: YEAR-MONTH-DAY HOUR:MINUTES

print_log() {
  log_date=$(date "+%Y-%m-%d %H:%M")
  echo "[$log_date] $@"
}

# Develop the shortest() function, which can take an unlimited number of arguments
# (strings) and output the shortest argument.

shortest() {
  shortest_string="$1"
  shortest_arg=("$1")

  for str in "$@"; do
    if ! [[ " ${shortest_arg[@]} " =~ " ${str} " ]]; then
      if [ "${#str}" -lt "${#shortest_string}" ]; then
        shortest_string="$str"
        shortest_arg=("$str")
      elif [ "${#str}" -eq "${#shortest_string}" ]; then
        shortest_arg+=("$str")
      fi
    fi
  done

  printf '%s\n' "${shortest_arg[@]}"
}

