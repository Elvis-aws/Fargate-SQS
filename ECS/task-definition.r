

***************
Task Definition
***************
    - The details of a task definition which describes the container and volume definitions of an ECS 
      Service task. You can specify which Docker images to use, the required resources, and other 
      configurations related to launching the task definition through an Amazon ECS service or task.
    - You can define max 10 containers per task definition
    - If we have many containers, we can have a Sidecar container to log container information 
    - We can select yes or no for Essential container. This implies the service will stop if any of this 
      goes down. 

{
  "Type" : "AWS::ECS::TaskDefinition",
  "Properties" : {
      "ContainerDefinitions" : [ ContainerDefinition, ... ],
      "Cpu" : String,
      "EphemeralStorage" : EphemeralStorage,
      "ExecutionRoleArn" : String,
      "Family" : String,
      "InferenceAccelerators" : [ InferenceAccelerator, ... ],
      "IpcMode" : String,
      "Memory" : String,
      "NetworkMode" : String,
      "PidMode" : String,
      "PlacementConstraints" : [ TaskDefinitionPlacementConstraint, ... ],
      "ProxyConfiguration" : ProxyConfiguration,
      "RequiresCompatibilities" : [ String, ... ],
      "RuntimePlatform" : RuntimePlatform,
      "Tags" : [ Tag, ... ],
      "TaskRoleArn" : String,
      "Volumes" : [ Volume, ... ]
    }
}

    *********************
    Environment variables
    *********************
        - Hardcoded e.g URLs
        - SSM Parameter Store and Secrets Manager
            - You can set secret data in this services and reference them in the task definition
            - They will then be fetched at run-time
        - Environmental bulk loading from S3
    ***********
    Data volume
    ***********
        - Use bind mount
            - For EC2, data is tied to the life cycle of the instance
            - For Fargate, data is tied to the containers using ephemeral storage
