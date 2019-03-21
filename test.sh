#!/bin/bash
SSM_VALUE=`aws ssm get-parameters --name DSMACTIVATIONURL  --query 'Parameters[*].Value' --output text`
echo $SSM_VALUE
