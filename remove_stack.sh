#!/bin/sh
cd ${0%/*}
. ./config

aws cloudformation delete-stack --stack-name "$STACK"


