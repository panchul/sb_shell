#!/usr/bin/env bash

myline=Configs:retention.ms=4,max.bytes=10
echo "input line: \"$myline\""
echo

# This will produce
# --config retention.ms=4,max.bytes=10
echo "echo \$myline | sed s/Configs:/--config\ / "
echo $myline | sed s/Configs:/--config\ /
echo

# This will produce
# --config retention.ms=4 --config max.bytes=10
echo "echo \$myline | sed s/Configs:/--config\ / | sed s/,/\ --config\ / "
echo $myline | sed s/Configs:/--config\ / | sed s/,/\ --config\ / 
echo

# TODO: find a better way to extract and reformat the list of configs
