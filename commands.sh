## command to create a repository in AWS ECR With name calendly

aws ecr create-repository --repository-name calendly-cicd-codebuild

## command  to buld the Docker Container Image (dont forget the dot at the end)
docker build -t calendly-cicd-codebuild .

docker build --platform linux/amd64 -t calendly-cicd-codebuild .


## Command to give the tag Lastest to the Docker Image

docker tag calendly-cicd-codebuild:latest 126304775778.dkr.ecr.us-east-1.amazonaws.com/calendly-cicd-codebuild:latest

##you can get above URI from AWS ECR console
## Command to connect to AWS ECR
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 126304775778.dkr.ecr.us-east-1.amazonaws.com

## Command to Push the latest Image to AWS ECR

docker push 126304775778.dkr.ecr.us-east-1.amazonaws.com/calendly-cicd-codebuild:latest