#!/bin/bash

#
# See my page Shell.md or Linux.md
#

PASSWD_FILE=/etc/passwd

read -p "Enter a user name : " username

grep "^$username" $PASSWD_FILE > /dev/null

# if found grep will return 0 exit stauts
# if not found, grep will return a nonzero exit stauts
status=$?

if test $status -eq 0
then
	echo "User '$username' found in $PASSWD_FILE file."
else
	echo "User '$username' not found in $PASSWD_FILE file."
fi