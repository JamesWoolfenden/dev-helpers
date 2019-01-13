#!/bin/bash
$keyname="id.default"
aws ec2 create-key-pair --key-name $keyname --query KeyMaterial --output text > $keyname.pem
