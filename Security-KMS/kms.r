

KMS
    - Manages encryption keys
    - Fully integrated with IAM
    - Able to audit KMS key usage using CloudTrail 
    - Integrated into most AWS services
    - You can do encryption through the CLI and UI or console
    - Data must be less than 4KB 
    - Request Quota 
        - Throttling exception 
        - use exponential backoff 
        - You can cache the GenerateDatakey locally (DEK caching) to increase quota limit
        - Request a quota increase using API call or through AWS service 
        - 