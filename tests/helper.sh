#!/usr/bin/env bash

source "$( cd "${BASH_SOURCE[0]%/*}" && pwd )/../lib/oo-bootstrap.sh"

import util/exception util/class util/test util/log src/helper

it "should kill a process by a process id"
try
    ( sleep 30 & )
    killProcess sleep
    [[ $? -eq 0 ]]
expectPass