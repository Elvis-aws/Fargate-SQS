

Key Types
    - Symetric (AES-256 Keys)
        - Single key for encryption and decryption
        - AWS services integrated with KMS use this key
        - You never get access to this key unencrypted (must call KMS API before use)
    - Asymetric (RSA & ECC Key pairs)
        - Public (encrypt) and private (decrypt) pair 
        - Used for sign/verify operations 
        - The public key is downloadable but you cant access the private key unencrypted 
        - For customers who cant call the AWS KMS API 
        