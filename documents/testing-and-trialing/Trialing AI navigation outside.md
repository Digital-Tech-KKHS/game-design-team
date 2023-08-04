Name: Xavier Frater

_Date:_ 03/08/2023

Involved in the trial
>- Charley Cates


## Trial goal:
> To ensure that the game would pose enough of a challenge to the end users without being too much of a challenge.


## Describe the trial
> I loaded the game and built the navigation mesh in two different ways, one was a dynamic mesh that only covered the area of the asylum and the other covered the outside area as well to ensure the enemy could chase you outside to the end fence if the front door is left open

(No photos can be supplied)
## Results
> - Charley went to go finish the level and the enemy stopped at the front door and would not roam outside
> - Charley went to go finish the level and the enemy continued to follow Charley out the door and would roam outside as well as chase him so it gave an element of challenge to the game.
> - A bug was found when the navigation mesh would not bridge the gap between the outside and the inside of the asylum. This was fixed with a nav link proxy.

## Briefly describe the changes you have made based on this trial
> - Like described above, the nav link proxy was put in place to bridge the gap between the two nav meshes and outside. This solved the issue and allowed the player to have the enemy chase them outside.