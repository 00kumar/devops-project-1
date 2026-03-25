#!/bin/bash
yum update -y
yum install -y docker
systemctl start docker && systemctl enable docker
aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin <account-id>.dkr.ecr.ap-south-1.amazonaws.com
docker pull <account-id>.dkr.ecr.ap-south-1.amazonaws.com/devops-app:v1
docker run -d -p 3000:3000 --name devops-app --restart unless-stopped <account-id>.dkr.ecr.ap-south-1.amazonaws.com/devops-app:v1
