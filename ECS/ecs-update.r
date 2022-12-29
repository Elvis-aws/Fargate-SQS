

*****************************************
Updating an ECS service (Rolling updates)
*****************************************
    Min 50% max 100% healthy percentages 4 tasks
        - Terminate 2 keep two running, create 2 new with latest updates
        - Terminate the 2 old instances, keep the 2 new then create 2 new with latest updates
    Min 100% max 150% healthy percentages 4 tasks
        - We need to create 2 new tasks to get at 150 max capacity
        - Terminate 2 and we are back at 100% capacity, create 2 with new updates and we are back at 150
        - Repeat the process untill we are complete with rolling updates