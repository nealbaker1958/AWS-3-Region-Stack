#!/bin/bash

ENV=${1}

cp /home/ubuntu/.aws/credentials.$ENV /home/ubuntu/.aws/credentials

#/home/ubuntu/bin/aws cloudformation delete-stack --stack-name AccentureDE1Stack --region eu-central-1

#/home/ubuntu/bin/aws cloudformation delete-stack --stack-name AccentureSG1Stack --region ap-southeast-1

/home/ubuntu/bin/awss cloudformation delete-stack --stack-name AccentureWA1Stack --region us-east-1

exit
