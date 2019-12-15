#!/bin/zsh
# draws a tv-noise-like pattern all over the terminal
#
# On Mac works with zshell,   #!/bin/zsh
# On Linux will probably work with another, #!/usr/bin/env bash
#
# If you cut/paste, do what's below. Otherwise have to put '\\' instead of '\', etc.
# 
#   P=(' ' █ ░ ▒ ▓)
#   while :;do printf "\e[$[RANDOM%LINES+1];$[RANDOM%COLUMNS+1]f${P[$RANDOM%5]}";done

P=(' ' █ ░ ▒ ▓)
while :;do printf "\\e[$[RANDOM%LINES+1];$[RANDOM%COLUMNS+1]f${P[$RANDOM%5]}";done
