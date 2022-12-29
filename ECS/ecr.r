
**************************
Elastic Container Registry
**************************
    - It is an AWS managed container image registry service that is secure, scalable, and reliable. 
    - Amazon ECR supports private repositories with resource-based permissions using AWS IAM. 
    - Authenticating with ECR
        - The get-login-password is the preferred method for authenticating to an Amazon ECR private registry 
          when using the AWS CLI. 
        aws ecr get-login-password --region region | docker login --username AWS --password-stdin aws_account_id.dkr.ecr.region.amazonaws.com
        docker tag hello-world:latest aws_account_id.dkr.ecr.region.amazonaws.com/hello-repository
        docker push aws_account_id.dkr.ecr.region.amazonaws.com/hello-repository
        docker pull aws_account_id.dkr.ecr.region.amazonaws.com/hello-repository:latest