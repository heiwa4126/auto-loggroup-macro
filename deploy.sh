#!/bin/bash
cd ${0%/*}
. ./config

cd macro
set -xe
aws s3 mb "s3://$S3"
aws cloudformation package --template-file macro.yml --s3-bucket "$S3" --output-template-file ../tmp-macro-output.yml
aws cloudformation deploy --template-file ../tmp-macro-output.yml --stack-name "$STACK" --capabilities CAPABILITY_IAM
aws s3 rb "s3://$S3" --force
