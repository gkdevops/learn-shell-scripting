#!/bin/bash

for server in `cat server_list.txt`;
do
  ssh ec2-user@${server} 'bash -s' < server_stats.sh
done
