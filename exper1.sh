#!/bin/bash
echo "this is a test to see if credentials are displayed"
git pull https://$1:$2@github.com/CianOpening/jenkins-test.git
