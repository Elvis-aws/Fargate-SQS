

*********
ECS Roles
*********
    - We recommend that you assign a task an IAM role. 
    - Assigning each task a role aligns with the principle of least privileged access 
    - When assigning IAM roles for a task, you must use the following trust policy 
    - This way, your task doesnt inherit the role of your EC2 instance.

    {
      "Version": "2012-10-17",
      "Statement": [
        {
          "Sid": "",
          "Effect": "Allow",
          "Principal": {
            "Service": "ecs-tasks.amazonaws.com"
          },
          "Action": "sts:AssumeRole"
        }
      ]
    }
    
    *******************
    Task execution role
    *******************
        - The task execution role is used to grant the Amazon ECS container agent permission to call specific AWS 
          API actions on your behalf. For example, when you use AWS Fargate, Fargate needs an IAM role that allows 
          it to pull images from Amazon ECR and write logs to CloudWatch Logs. 
        - An IAM role is also required when a task references a secret thats stored in AWS Secrets Manager, such 
          as an image pull secret.
    ***************************
    EC2 container instance role
    ***************************
        - The Amazon ECS container agent is a container that runs on each Amazon EC2 instance in an Amazon ECS 
          cluster. 
        - Its initialized outside of Amazon ECS using the init command thats available on the operating system. 
        - Consequently, it cant be granted permissions through a task role. Instead, the permissions have to be 
          assigned to the Amazon EC2 instances that the agents run on. 
