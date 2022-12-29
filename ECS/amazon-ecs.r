
**********
Amazon ECS
**********
    - Amazon ECS is a highly scalable and fast container management service. 
    - You can use it to run, stop, and manage containers on a cluster. 
    - Your containers are defined in a task definition that you use to run an individual task or task within a 
      service. 
    - A service is a configuration that you can use to run and maintain a specified number of tasks simultaneously 
      in a cluster. 
    - You can run your tasks and services on a serverless infrastructure thats managed by AWS Fargate. 
    - Alternatively, for more control over your infrastructure, you can run your tasks and services on a cluster of 
      Amazon EC2 instances that you manage.
    ************
    Launch Types
    ************
        There are two models that you can use to run your containers
            *******************
            Fargate launch type
            *******************
                - You can run containers without needing to manage your infrastructure.
                - Large workloads that need to be optimized for low overhead
                - Small workloads that have occasional burst
                - Tiny workloads
                - Batch workloads
                - Increase the number of tasks to scale 
            ***************
            EC2 launch type
            ***************
                - Configure and deploy EC2 instances in your cluster to run your containers
                - Workloads that require consistently high CPU core and memory usage
                - Large workloads that need to be optimized for price
                - Your applications need to access persistent storage
                - You must directly manage your infrastructure
                    ******************************
                    Create an EC2 Instance Profile
                    ******************************
                        - This will be used by the ECS agent to make API calls to ECS service, send container 
                          logs to CloudWatch Logs, pull Docker image from ECR, reference sensitive data in 
                          Secrets Manager or SSM Parameter Store.
                    *************
                    ECS Task Role
                    *************
                        - Allows each task to have a specific role. This different roles will connect to different 
                          AWS services. Task Role is defined in the Task Definition.
                    *******
                    ECS ELB
                    *******
                        - You can connect an ELB infront of your ECS tasks
                    ******************
                    Data Volumes (EFS)
                    ******************
                        - Mount EFS file systems onto ECS tasks. Works for both EC2 and Fargate launch types
                          This will connect tasks running in different AZs so they can share data. S3 cannot 
                          be used as a file system for ECS tasks.