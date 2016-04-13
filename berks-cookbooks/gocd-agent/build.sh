#!/bin/bash

## Execute the CI task from the Rakefile
# sudo $(which chef) exec rake ci

## Obtain the source AMI to use for our Packer build.
base_ami_id=$(aws ec2 describe-images --filters Name=tag-key,Values=name Name=tag-value,Values=linux-ubuntu-base --output text --query 'Images[0].ImageId')

## Build an AMI for this cookbook
$(which chef) exec rake packer[$base_ami_id]