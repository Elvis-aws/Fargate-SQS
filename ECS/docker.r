

**
OS 
**
    We have three layers as shown below
        - Applications 
        - OS 
        - Kernel 
        - Hardware 

    ******
    Docker
    ******
        - Docker is an open source platform for developing, shipping, and running applications in a loosely 
          isolated environment called a container.
        - Docker virtualizes the applications layer 
        - Uses the Kernel of the host OS 
        - Process isolation 
        - Apps are packaged in containers that can be run on any OS 
        - Apps run the same regardless on where they are run 
        - You need to run the docker agent on any host in other to run containers 
        - Containers can be join by a common network and share data 
        - Small size 
        - Faster 
        - Resources are shared with the host OS 
            - Containers 
            - Docker Daemon (Engine)
            - Host OS 
            - Infastructure

    ****************
    Virtual Machines
    ****************
        - Isolation of machines on one single server 
        - VM uses the applications layer and its own OS Kernel 
        - Large size 
        - Slower 
        - Resources 
            - Apps 
            - Guest OS (VM)
            - Hypervisor (Responsible for creating virtualised instances of each of the components that make up 
              our machines like RAM, CPU,Processors)
            - Host OS 
            - Infastructure 
        