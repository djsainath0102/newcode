#!/bin/bash 
#Lock the given user. 
read -p "enter the user to lock:" user
grep -w ^$user /etc/shadow>/dev/null 2>&1
res=$?
if [ $res -eq 0 ]
then
  echo "user found... Checking if user locked.."
grep -w ^$user /etc/shadow | out -f2 -d: | grep ^| >/dev/null 2>&1
res=$?
if [ $res -eq 0 ]
then 
   echo "Locked succesfully"
else
   echo " $user could not lock the user"
fi #inner if  
else 
  echo "user $user not found in the system"
fi #out if closed 
#end of the program
 
