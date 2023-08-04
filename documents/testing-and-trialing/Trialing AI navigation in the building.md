Name: Xavier Frater

_Date:_ 03/08/2023

Involved in the trial
>- Charley Cates


## Trial goal:
> To ensure that the game would pose enough of a challenge to the end users without being too much of a challenge.


## Describe the trail
> I loaded the game and built the navigation mesh in two different ways, one was a static mesh that would not react with the scene around it and another was a dynamic mesh that could be changed when the environment is interacted, resulting in the enemy being allowed to roam into a room.

(No photos can be supplied)
## Results
> - Charley went to go hide in a room and the enemy did not follow him into the room with a static navigation mesh
> - Charley went to go hide in a room and the enemy did follow him into the room and killed the player
> - A bug was found where the agent radius in the navigation mesh was too small, meaning the doorway was expecting a smaller enemy to go through the doorway, resulting in the enemy clipping

## Briefly describe the changes you have made based on this trial
> - Increased the size of the agent radius so a bigger enemy was expected, removing the clipping issue when the enemy goes through the doorways
> - Doorways were also made larger in the process so the larger enemy could fit through and allow the navigation mesh.