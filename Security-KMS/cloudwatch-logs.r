

CloudWatch Logs Encryption
    - Logs encryption with KMS keys 
    - Encryption is enabled at the log group level 
    - Before or after log group is created
    - You must use the CloudWatch Logs API to associate the CMK with the log group 
    - Not possible using the console 
    - There are two APIs 
        - associate-kms-keys: If the log group already exist 
        - create-log-group: If the log group does not exist 