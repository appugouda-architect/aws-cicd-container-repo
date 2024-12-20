# aws-cicd-container-repo

Repo to demonstrate cicd pipeline with simple node js express app

# ECR Login from AWS CLI

aws ecr get-login-password --region <<REGION>> | \
docker login --username AWS --password-stdin <<AWS_ACCOUNT_ID>>.dkr.ecr.<<REGION>>.amazonaws.com/cicd-container-repo

# Build the docker image to create blue print

docker build -t <<IMAGE_NAME>>:<<TAG>> . // . indicates current working directory

# Tag the docker image : version docker image

docker tag <<IMAGE_NAME>> <<ECR_URL>>

# Push to docker image to ECR private repository

docker push <<ECR_URL>> <<AWS_ACCOUNT_ID>>.dkr.ecr.<<REGION>>.amazonaws.com/cicd-container-repo:<TAG>
