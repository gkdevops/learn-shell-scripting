#!/bin/bash

<<comment
# Syntax of Bash Function Declaration
function function_name() {
  our_commands
}

# To call a bash function
function_name

comment

function hello() {
  echo "Hello, my name is $1"
  echo "Today's date is `date`"
}

hello Harry
