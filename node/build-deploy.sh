#!/bin/bash

#https://twitter.com/b0rk/status/1314345978963648524/photo/1
set -euo pipefail

# check if there are arguments
if [[ $# -eq 0 ]] ; then
    echo 'please specify a tag'
    exit 1
fi

TAG=$1

#login to public ecr
aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws

docker build --no-cache -t public.ecr.aws/j0g7s5f8/astradot/aws-amplify-nodejs:$TAG .
docker push public.ecr.aws/j0g7s5f8/astradot/aws-amplify-nodejs:$TAG


