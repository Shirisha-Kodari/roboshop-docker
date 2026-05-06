#!/bin/bash

if [ -f /tmp/mysql_root_password.txt ]; then # file exits or not checks 
   PASSWORD=$(cat /tmp/mysql_root_password.txt) #set mysqlrootpassword set as a variable 
   echo "accessed root password"
else #if success password or not success print password file not found then exit 

  echo "password file not found"
  exit 1 
file
# making it as available in shell env
export MYSQL_ROOT_PASSWORD=$PASSWORD
rm -rf /tmp/mysql_root_password.txt
exec /entrypoint.sh mysqld   