#!/bin/bash

awslocal s3 mb s3://mybucket
awslocal s3api put-bucket-cors --bucket mybucket --cors-configuration file:///etc/localstack/init/ready.d/cors.json
for f in /home/localstack/data/*.json
do
  awslocal s3 cp $f s3://mybucket/
done
