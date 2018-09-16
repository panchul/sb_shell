#!/bin/bash

# This is what it is about:
#
#    $ function debug() {((DEBUG_LOG)) && echo "### $*"; }
#    $ debug "something"
#    $ DEBUG_LOG=1 debug "something"
#    ### something
#    $ debug "something"
#    $ export DEBUG_LOG=1
#    $ debug "something"
#    ### something
#
#  Basically, include this into your source and use:
#  #!/bin/bash
#  . "debugging_trace.sh"
#  DEBUG_LOG=1
#  debug "something"
#

function debug() {((DEBUG_LOG)) && echo "### $*"; }

DEBUG_LOG=1 debug "something"

