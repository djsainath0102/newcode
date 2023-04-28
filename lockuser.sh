#!/bin/bash 
#Lock the given user. 
read -p "enter the user to lock:" user
#check if the user exists in the system. if the system.if yes, then procees to lock 
#using nested if's. an if condition inside if.
grep -w ^$user /etc/passwd>/dev/null 2>&1
res=$?
if [ $res -eq 0 ]
then 
 echo "locking the user $user"
 usermod -L $user>/dev/null 2>&1
 if [ $? -eq 0 ]
 then
   echo "Locked succesfully"
else
   ecoh "could not lock the user"
fi #inner if closed 
else 
  echo "user $user not found in the system"
fi #out if closed 
