#!/bin/bash
#
# Deploy changes to the application from outside of vagrant
# Usage: ./deploy.sh
#

declare -a arr=("app1" "app2")

for i in "${arr[@]}"
do
   echo "$i"
   vagrant provision $i --provision-with shell
done
