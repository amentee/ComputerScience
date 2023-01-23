#!/bin/bash

# from CLI Shorthand syntax
aws cloudformation create-stack --stack-name DynamoDBFromCLI --template-body file://7-dynamodb.yaml --parameters ParameterKey=TargetRCU,ParameterValue=1 ParameterKey=TargetWCU,ParameterValue=2

aws cloudformation delete-stack --stack-name DynamoDBFromCLI

# from Parameters JSON file
aws cloudformation create-stack --stack-name DynamoDBFromJSON --template-body file://7-dynamodb.yaml --parameters file://7-dynamodb-params.json 

aws cloudformation delete-stack --stack-name DynamoDBFromCLI
