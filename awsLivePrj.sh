#!/bin/bash

################
<<Author
Author: NJK
Date: 24 May 2023

Version: v1
This script will report the AWS resource usage

-AWS S3
-AWS EC2
-AWS Lambda
-AWS IAM Users

Author

set -x

# list the s3 buckets
echo "List of s3 buckets"
aws s3 ls

# list only ec2 instance -id
echo "List of ec2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# list aws lambda 
echo "List of lambda functions"
aws lambda list-functions

#list aws IAM users
echo "List of IAM users"
aws iam list-users

