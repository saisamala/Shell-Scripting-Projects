#!/bin/bash

#################
#Author: Sai Teja Samala (saisamala)

#This script will report the AWS resource usage
#################

# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users

# list S3 buckets
echo "list of S3 buckets"
aws s3 ls

# list EC2 Instances
echo "list of EC2 instances"
aws ec2 describe-instances | jq 'Reservations[].Instances[].InstanceId'

# list Lambda Functions
echo "list of Lambda functions"
aws lambda list-functions

# list IAM users
echo "list of IAM users"
aws iam list-users
