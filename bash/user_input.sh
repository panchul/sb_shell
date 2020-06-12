#!/bin/bash
while :
do
   echo "hi"
   read -r -p "what is your answer? [Y/n] " input
   case $input in
     [yY][eE][sS]|[yY])
         echo "it was yes"
         break
         ;;
     [nN][oO]|[nN])
         echo "it was no"
         break
         ;;
      *)
         echo "Invalid input..."
         # exit 1
     ;;
   esac
done
