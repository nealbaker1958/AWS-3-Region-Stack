#!/bin/bash

ENV=${1}

cp /home/ubuntu/.aws/credentials.$ENV /home/ubuntu/.aws/credentials

/home/ubuntu/bin/aws cloudformation create-stack --stack-name AccentureWA1Stack --template-body file://build-wa1-control.json --region us-east-1

#/home/ubuntu/bin/aws cloudformation create-stack --stack-name AccentureSG1Stack --template-body file://build-sg1-control.json --region ap-southeast-1

#/home/ubuntu/bin/aws cloudformation create-stack --stack-name AccentureDE1Stack --template-body file://build-de1-control.json --region eu-central-1


echo "Waiting 3 mins for stacks to create........."
#sleep 180

echo "AccentureWA1Stack"
/home/ubuntu/bin/aws cloudformation describe-stacks --stack-name AccentureWA1Stack --region us-east-1 |grep StackStatus

echo "AccentureSG1Stack"
/home/ubuntu/bin/aws cloudformation describe-stacks --stack-name AccentureSG1Stack --region ap-southeast-1 |grep StackStatus

echo "AccentureDE1Stack"
/home/ubuntu/bin/aws cloudformation describe-stacks --stack-name AccentureDE1Stack --region eu-central-1 |grep StackStatus

exit
