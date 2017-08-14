#!/bin/bash

/usr/local/aws/bin/aws cloudformation delete-stack --stack-name AccentureDE1Stack --region eu-central-1

/usr/local/aws/bin/aws cloudformation delete-stack --stack-name AccentureSG1Stack --region ap-southeast-1

/usr/local/aws/bin/aws cloudformation delete-stack --stack-name AccentureWA1Stack --region us-east-1

exit
