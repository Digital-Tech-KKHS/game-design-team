**Git Hash: ad95eda4c5b4354305176981672278162a03856a
			   b3dfa48994a64df2fe9bd5461b2a85b6ce937e6b**

**Sprint Number: Two**

**Start Date: 27/05/2023**

**End Date: 13/05/2023**

**Work hard rating** ☆☆☆

# Project at the start of the sprint

## **KANBAN board at the start of the sprint:**
![[Pasted image 20230508145412.png]]

## **Screenshot of the game at the start of the sprint**
![[Pasted image 20230508142829.png]]

# Sprint Summary

## **Sprint Reflection and summary:**
During this time, I mainly struggled with making the play button interactable. This was due to a programing error I created. I managed to fix this issue by creating a new level object with all the objects of the level, inside that level object. Once that level object was created, I created an entire separate new level with all the assets of the main menu inside that. I made sure that my game was loading the main menu screen first, then once the play button was pressed, the playable level was loading and removing the main menu level from memory. If I hadn't had done this, the main menu level wouldn't disappear and the game would start rendering beneath the main menu.

## **Briefly describe other team members contributions:**
N/A

## **Major Changes and Achievements Described:**
- Added gems and collectables
- Added a win condition
- Added a main menu with interactable buttons
- Added the main menu backdrop
- Added the ability to switch resolutions in the main menu
- Added a losing condition
- Changed the time from day to night
- Items were textured

## **Brief Description of your testing:**
The main portion of the testing was spent figuring out the main menu and getting the play button to work. I tested it mainly myself as I believe such a simple mechanic doesn't require much testing from someone other than myself. The main menu was also put through its paces and tested as well to ensure that there were no bugs present, and thankfully through my methods of testing, there were no bugs to be seen.

## **Link to testing results/tables**
[[testing]]
# Project at the end of the sprint

## **KANBAN board at the end of the sprint**
![[Pasted image 20230509083643.png]]

## **Screenshot of the game at the end of the sprint**
![[Pasted image 20230510100501.png]]

## Link to **Video of the game at the end of the sprint**

## **Notes for next time, future improvements:**
I would like to see the game add the scroll feature, as stated in my Kanban board, as this is an essential mechanic in the end game. I would also like to see the performance improved drastically. This can be improved by the end of the game when I go to cook it. I can compile the game down to C++ later on and run it that way. A flashlight mechanic is also a future improvement I'd like to see as well as interactable doors, which is my goal for the next sprint.