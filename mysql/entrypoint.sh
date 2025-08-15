#!/bin/bash

if [ -f /tmp/mysql_root_password.txt]; then # file exits or not checks 
   PASSWORD=$(cat /tmp/mysql_root_password.txt)
   echo "accessed root password"
else

  echo "password file not found"
  exit 1
file
# making it as aailable in env
export MYSQL_ROOT_PASSWORD

exec /entrypoint.sh mysqld