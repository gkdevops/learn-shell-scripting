#!/bin/bash
# ------------------------------------------------------------------------------
# Script Name:       server_stats.sh
# Description:       Gather all server stats of ram,cpu and disk usage
# Author:            Goutham Kumar
# Created:           05th January 2025
# Last Modified:     
# Version:           1.0.0
# Usage:             ./<script_name>.sh (no arguments are required)
# Notes:             Useful for server issues
# Bash Version:      5.1.8
# ------------------------------------------------------------------------------

server_name=$(hostname)

# Function to check the memory stats
function memory_check(){
  echo "-----------------------------------------------"
  echo "The current memory usage on ${server_name} is:"
  echo "-----------------------------------------------"
  free -h
  echo "-----------------------------------------------"
  echo "Top 10 Memory usage process id's"
  echo "-----------------------------------------------"
  ps -eo pid,ppid,%cpu,%mem,cmd --sort=-%cpu | head
  echo "-----------------------------------------------"
}

# Function to check the CPU stats
function cpu_stats(){
  echo "The current CPU usage on ${server_name} is:"
  echo "-----------------------------------------------"
  mpstat
  echo "-----------------------------------------------"
  echo "Top 10 CPU usage process id's"
  echo "-----------------------------------------------"
  ps -eo pid,ppid,%cpu,%mem,cmd --sort=-%mem | head
  echo "-----------------------------------------------"
}

# Function to check the Disk stats
function disk_stats(){
  echo "The current Disk usage on ${server_name} is:"
  echo "-----------------------------------------------"
  df -h
  echo "-----------------------------------------------"
}

# Function to print server info
function server_info(){
  echo "Kernel Version"
  echo "OS version"
  echo "Total CPU Cores"
  echo "Total Memory"
  echo "-----------------------------------------------"
}

function all_stats(){
  memory_check
  cpu_stats
  disk_stats
  server_info
}

# main code
all_stats
