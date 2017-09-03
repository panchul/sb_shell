#!/bin/bash
#
# found coloring at https://raymii.org/s/snippets/Bash_Bits_Add_Color_Output_To_Your_Scripts.html
#

# these are basically outputting the excape characters, like cout << "\033[1;31mbold red text\033[0m\n";

black() { echo "$(tput setaf 0)$*$(tput setaf 9)"; }
red() { echo "$(tput setaf 1)$*$(tput setaf 9)"; }
green() { echo "$(tput setaf 2)$*$(tput setaf 9)"; }
yellow() { echo "$(tput setaf 3)$*$(tput setaf 9)"; }
blue() { echo "$(tput setaf 4)$*$(tput setaf 9)"; }
magenta() { echo "$(tput setaf 5)$*$(tput setaf 9)"; }
cyan() { echo "$(tput setaf 6)$*$(tput setaf 9)"; }
white() { echo "$(tput setaf 7)$*$(tput setaf 9)"; }

echo "Standard colors(the first one is black, so you might not see it):"

black "This is black text" 
red "This is red text"
green "This is green text"
yellow "This is yellow text"
blue "This is blue text"
magenta "This is magenta text"
cyan "This is cyan text"
white "This is white text"

echo -e "\nNow let's see what else is available...\n"

( x=`tput op` y=`printf %$((${COLUMNS}-6))s`;for i in {0..256};do o=00$i;echo -e ${o:${#o}-3:3} `tput setaf $i;tput setab $i`${y// /=}$x;done; )



