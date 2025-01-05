#!/bin/bash

# This is a shell script for learning

today_date=`date +"%d_%b_%Y"`

app_name="abc1"

if [ -z "$app_name" ]
then
  echo "variable is empty and exiting shell script"
  exit 1
fi

if [[ "$#" -ne 3 ]]
then
  echo "Error: You must provide exactly 3 arguments to the script"
  echo "Usage: $0 sales dev backend"
  exit 1
fi

echo "script ran successfully"

if [[ $app_name == "abc" ]]
then
  echo "both values are same"
else
  echo "both values are not same"
fi

echo $service
