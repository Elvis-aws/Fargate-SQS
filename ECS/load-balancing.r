
******************************
Load Balancing EC2 Launch Type
******************************
    - We get Dynamic Host Mapping if you define only the container port in the task definition
    - With dynamic host port mapping, the container ports keep changing
    - A classic load balancer will not work with this setup
    - You must allow from the EC2 instance SG any port from the ALBs security group
*********************
Load balancer Fargate
*********************
    - Each task has a unique private IP address
    - Connected using an ENI
    - Each ENI is going to get same container port thus the ALB can connect to the containers on the port 80
    - Only the container port is defined, no host is applicable