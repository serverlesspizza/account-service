#!/bin/bash

aws cloudformation delete-stack 
    --stack-name 'serverlesspizza-account-service-pipeline' 
    --region eu-west-1
    --profile aws-serverlesspizza-devops
