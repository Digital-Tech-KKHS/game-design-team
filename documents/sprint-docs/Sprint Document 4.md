**Git Hash: 37ce9f78e8e6d81b17a30a22153f2667c0aef832
                **

**Sprint Number: 4**

**Start Date:21/07/2023**

**End Date:04/08/2023**

**Work hard rating** ☆☆☆☆☆

# Project at the start of the sprint

## **KANBAN board at the start of the sprint**
![[Pasted image 20230804005229.png]]
## **Screenshot of the game at the start of the sprint**
![[HighresScreenshot00003 1.png]]
# Sprint Summary
## **Sprint Reflection and summary**
During this time, it really was crunch time and a lot of things that I needed to do, needed to be done. Everything that was done was all covered in the kanban board. However, I did run into many issues throughout this crunch time. A big issue I faced was memory leaks and the datasmith plugin simply not importing my project into the Unreal Engine. I did manage to fix both of these problems with one solution and that was decreasing the scope of the project. I realised my project was getting out of control and I needed to cut down on the assets I was using otherwise my game was going to be over 50GB which isn't right for a game of this scope. During this time I also faced issues with GitHub as my project became too large and Git LFS could no longer handle the project scope forcing me to reduce the size of the project as well. Another problem I faced was heavy performance issues due to my dynamic lighting scenery inside the asylum causing the game to not run at an acceptable framerate as a result. I fixed this issue by making sure I changed the lighting from dynamic lighting to precalculated, static lighting. Another issue I faced was my main menu options screen. The main menu options screen would not allow me t o save my settings because I had incorrectly created the widget inside the main menu blueprint. This was solved by changing the "construct widget" node I had in my main menu logic to a "create widget" node. This solved the issue my game had when saving the settings of my game. Other issues I faced were roaming and chasing logic that have been outlined in my testing and trialing documentation. The enemy would not roam the rooms with the path I had laid out. This was fixed by creating a dynamic navmesh, ensuring that my static meshes and collisions boxes in the environment could interact and update the state of the navmesh when a door was opened.
## **Major Changes and Achievements Described**
- Added two enemies to both levels
- Finished the setting for the asylum
- Make the enemies roam and dynamically roam when the environment changes
- Procedurally generated forest scene
- Main menu added
- Credits menu added
- Options menu added
- Quit option added to the main menu
- Pause menu added
- Save and load settings from options menu fixed
- Win condition and lose condition sorted
- Added keys and locked doors the player can interact with
- State machine created for the enemies
- Animation cycle works based on state machine
- Time set to night
- Added collisions to the environment
- Stars added to the scenery
- Stopped the door sound from being able to be spammed as the door sound did not have a do once condition
- Added the SFX
- Finished animating and texturing characters
## **Brief Description of your testing**
- Iterations of the game were placed in front of play testers and found that firstly, pause menu did not need a "Quit" button, but instead a "Quit to menu" button.
- Found some doors did not open due to the fact that the variable that controlled the speed at which they open and close, was set to 0
- AI roaming was tested and was found to be buggy at times due to the relatively small doorways, which were later enlarged. Testing was done to ensure the enemy could get through the door and catch the player if they were careless on how they left the doors open
- Win condition was tested to see if they player could finish the game, found to be successful
- Key collection was another mechanic that was tested to be working properly with relative ease
- The main menu seemed to have worked correctly all fine with the exception of the options menu which issues have been documented very well and can be found in test 11 of the [[testing]] document.
- Tested if the state machine for the enemy was working correctly and was found to be working absolutely fine with some issues initially caught before placed in front of play testers. Issues relating to this can also be found in the [[testing]] document
- Testing the pause menu was done during this time and was found to be successful and was a suggested implementation by one of my play testers as they thought a pause menu is necessary for a horror game.
## **Link to testing results/tables**
[[testing]]
# Project at the end of the sprint

## **KANBAN board at the end of the sprint**
![[Pasted image 20230804140925.png]]

## **Screenshot of the game at the end of the sprint**
![[HighresScreenshot00004.png]]
## Link to **Video of the game at the end of the sprint**
![](https://youtu.be/owGod5sCxb8)
## **Notes for next time, future improvements**
For future improvement made to this game, I would make sure that I had a death screen, win screen and an animation for the lady of the asylum when she eventually catches you. These were mechanics I simply did not have time for and were not willing to implement as I saw them as unnecessary additions for this sprint. Given I had more time as well, more levels to the game would have been added and more complex mechanics of the game would have been used as well. These are all nice-to-haves and are not necessary for a finished game.