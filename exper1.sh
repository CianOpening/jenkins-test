#!/bin/bash
echo "this is a test to see if credentials are displayed"
user=$1
password=$2
git pull https://$user:$password@github.com/CianOpening/jenkins-test.git
