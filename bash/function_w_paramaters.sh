#!/bin/bash

DEFAULT=default

func1 () {
   if [ -z "$1" ]                           # first parameter zero length?
   then
     echo "-Parameter #1 is zero length.-"  # could still be no parameter passed
   else
     echo "-Parameter #1 is \"$1\".-"
   fi

   variable=${1-$DEFAULT}                   #  What does
   echo "variable = $variable"              #+ parameter substitution show?
                                            #  ---------------------------
                                            #  It distinguishes between
                                            #+ no param and a null param.

   if [ "$2" ]
   then
     echo "-Parameter #2 is \"$2\".-"
   fi

   return 0
}

echo "Nothing passed."   
echo func1
func1
echo

echo "Zero-length parameter passed."
echo "func1 \"\""                      
func1 ""                      
echo

echo "Null parameter passed."
echo "func1 \"$uninitialized_param\""   
func1 "$uninitialized_param"   
echo

echo "One parameter passed."   
echo "func1 first"           
func1 first           
echo

echo "Two parameters passed."   
echo "func1 first second"    
func1 first second    
echo

echo "\"\" \"second\" passed."
echo "func1 \"\" \"second\""
func1 "" second       
echo              

exit 0

