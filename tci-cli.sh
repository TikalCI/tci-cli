#!/bin/bash

set -e

# set action defaulted to 'restart'
action='build'
if [[ $# > 0 ]]; then
   action=$1
fi

if [[ "$action" == "build" ]]; then
    go build cli/tci
    mv tci bin
fi

