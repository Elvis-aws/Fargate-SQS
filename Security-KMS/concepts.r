

Encryption in Flight
    - Data is encrypted before sending and decrypted after receiving
    - Use SSL certificates
    - No man in the middle attach for encryption in flight 
Encryption at rest
    - Data is encrypted after being received by the server
    - Data is decrypted before being sent
    - Data key is used to store data in encrypted form 
    - The encryption/decryption keys must be managed by KMS Key service
    - Server must have the right to communicate to KMS
Client Side encryption
    - Data is encrypted by Client
    - Data will be decrypted by a receiving Client
    - Server should never decrypt data
    - Could leverage envelope encryption 
