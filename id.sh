#!/bin/bash 
#check if the given user id is root
if 
test `id -u` -eq 0 
then 
   echo "you are root user"
else
   echo "you are not root....."
fi 
 
