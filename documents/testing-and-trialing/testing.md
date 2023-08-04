## Test 1:
# Getting user input

Date: 12/04/2023
![[Pasted image 20230403141627.png]]
| Test Data                           | Expected                              | Observed                            |
| ----------------------------------- | ------------------------------------- | ----------------------------------- |
| Moving backwards and forth          | The ball rolls backwards and forwards | The ball rolled backwards and forth |
| Moving the character left and right | The ball rolls left and right         | The ball rolled left and right      |
| Pressing space to jump              | The balls will move vertically        | The ball moves vertically           | 


## Test 2:
# Checking for collisions with gems
Date: 27/04/2023
![[Pasted image 20230505123322.png]]
| Test Data              | Expected                                                                      | Observed            |
| ---------------------- | ----------------------------------------------------------------------------- | ------------------- |
| Colliding with the gem | The gem is collided with by the player and is destroyed (removed from memory) | Exactly as expected |
| Adding to the score    | The score counter increases after the actor is destroyed                      | Exactly as expected | 

## Test 3:
# Testing if gem rotates when game is running
Date: 27/04/23
![[Pasted image 20230505123552.png]]

| Test Data    | Expected                               | Observed         |
| ------------ | -------------------------------------- | ---------------- |
| Gem rotating | The gem rotates in a static y position | Same as expected | 

## Test 4:
# Revised player input
Date: 27/04/23

![[Pasted image 20230505125101.png]]
![[Pasted image 20230505125104.png]]
![[Pasted image 20230505125112.png]]
![[Pasted image 20230505125118.png]]

| Test Data                           | Expected                                                       | Observed                                                       |
| ----------------------------------- | -------------------------------------------------------------- | -------------------------------------------------------------- |
| Moving backwards and forth          | The player moves backwards and forwards                        | The player moved backwards and forth                           |
| Moving the character left and right | The player moves left and right                                | The player moved left and right                                |
| Pressing space to jump              | The player will jump                                           | The player jumps                                               |
| Moving the mouse around             | The camera will revolve around the player based on mouse input | The camera revolved around the player in the desired direction | 

## Test 5:
# Adding a score UI
Date: 01/05/23
![[Pasted image 20230505125506.png]]
![[Pasted image 20230505125533.png]]

| Test Data                                                     | Expected                                                                             | Observed         |
| ------------------------------------------------------------- | ------------------------------------------------------------------------------------ | ---------------- |
| Score counter in the top middle of the screen                 | The score counter renders the current score in the top, middle of the screen         | Just as expected |
| Score counter increments with every gem collision with player | The score counter increases in increments of one when a gem is collected             | Just as expected |
| Score counter limits                                          | When the score counter reaches six, the game closes and unloads the process from RAM | Just as expected | 


## Test 6:
# Testing the main menu and its buttons 
Date: 04/05/2023
![[Pasted image 20230505124306.png]]
![[Pasted image 20230505124455.png]]
![[Pasted image 20230505124546.png]]

| Test Data                                                         | Expected                                                                            | Observed                                                |
| ----------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ------------------------------------------------------- |
| Pressing play                                                     | Begins the game and loads the first level                                           | Had trouble initially with this but eventually fixed it |
| Pressing the options button                                       | Opens the options menu and allows the user to see the resolution options            | Same as expected                                        |
| Pressing the Quit button                                          | Closes the game and removes the process from RAM                                    | Same as expected                                        |
| Changing the resolution by interacting with the resolution button | Changes the resolution of the viewport and ensuring the game is still full-screened | Same as expected                                        |
| Pressing play and removing all the widgets                        | Removes the main menu screen                                                        | Same as expected                                        |

## Test 7:
# Testing the opening and closing of the doors and the interact prompt
![[Pasted image 20230804124126.png]]

| Test Data                                                         | Expected                                                                            | Observed                                            |
| ----------------------------------------------------------------- | ----------------------------------------------------------------------------------- | --------------------------------------------------- |
| Walking up to the door                                            | The game calls the widget "overlap prompt" and displays the prompt on screen        | Overlap prompt is called and is displayed on screen |
| Pressing E to interact with the door                              | The door opens and closes while playing the animation and the sound                 | Same as expected                                    |

## Test 8:
# Testing the picking up of keys in the scene
![[Pasted image 20230804124348.png]]

| Test Data                     | Expected                                                                                  | Observed                                            |
| ----------------------------- | ----------------------------------------------------------------------------------------- | --------------------------------------------------- |
| Walking into the key hitbox   | The game calls the widget "overlap prompt" and displays the prompt on screen              | Overlap prompt is called and is displayed on screen |
| Pressing E to pick the key up | The key is "picked up," and the sound plays to illustrate that the key has been picked up | Same as expected                                    |

## Test 9:
# AI roam, detection and kill logic
![[Pasted image 20230804124853.png]]

| Test Data       | Expected                                                                                                    | Observed                                                                                                                                        |
| --------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------- |
| Roaming logic   | The game begins and the AI begins to roam the navigation mesh outlayed                                      | Exactly as expected                                                                                                                             |
| Detection logic | The AI sees the player, runs through the animation cycle and it runs at the player                          | Initially had some troubles with the enemy roaming into the rooms, but was later solved by ensuring that there was a dynamic navmesh in the map |
| Death logic     | The player gets too close to the NPC's hitbox and the player should die, sending them back to the main menu | Exactly as expected                                                                                                                             |


## Test 10:
# Win condition
![[Pasted image 20230804125536.png]]

| Test Data                                   | Expected                                                                                                    | Observed                                                                                                                                        |
| ------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------- |
| The player overlaps the hitbox of the fence | The player should see an interact prompt, causing them to escape the asylum                                 | Exactly as expected                                                                                                                             |

