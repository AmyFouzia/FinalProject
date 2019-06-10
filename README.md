# Final Project

## Thursday, May 16, 2019

- experimentation with movement of the character
- character follows the mouse
- experimentation with enemy movement 
- one rectangle moves down the screen

## Tuesday, May 21, 2019

- prototype was fully approved, except I need to fix the UML
- character and obstacle shldnt extend bullet, make a parent class for all three
- experimented more with enemy movement
- multiple enemies spawn at the top with space in between and make their way towards the bottom
- started experimenting with making a timer for scoreTracker

## Wednesday, May 22, 2019

- timer works, can make a scoreTracker(maybe implement a highscore?)
- enemy movement updated so that they keep respawning at semi-random speeds

## Thursday, May 23, 2019

- Made the screen size bigger
- Mr.K said to make enemies autonomous and to add lives
- updated collision with code

## Friday, May 24, 2019

- added a separate enemy class to lessen code in collision exp
- made all the priv methods with accessors, figuring out the enemy movement

## Tuesday, May 28, 2019

- still transitioning into separate enemy class
- figuring out ways to update the x and y vals for enemies to simulate autonomous movement

## Wednesday, May 29, 2019

- had to go back on old code, a little stuck
- feeling like im onto something with enemy movement, def cant use for and while loops too much

## Thursday, May 30, 2019

- finally figured out enemy movement
- planned out next steps from here

## Tuesday, June 4, 2019
##aka grind day

- Im way behind
- rather than using branches I ended up using my experiments folder to figure things out, it really helped since I was working on my own
- moved code from draw() into two separate character and enemy classes
- realized im an idiot for not making a parent class for them both
- replaced them with cool images 
- finalized enemy movement, as time progresses they get farther apart
- finalized the player movement using vectors :( it now smoothly lags behind the cursor and looks cool
- started working on collision detection
- did collision btn player and enemy, it is now a simple avoidance game
- collisionExp is done, and everything is in separate classes finally so updated prototype to show all my changes
- started on bulletExp to actually make this into what I wanted it to be
- it's june 5th now ...
- i spent another 2 hrs trying to get the bullets to work but i dont think im functioning properly enough to do it right now
- the code I have for it so far is in /Experiments/BulletExperiment
- the FinalGame folder will have my collision detection code

## Saturday, June 8, 2019
- fixed up bullet class
- rearranged structure of code 
- debugged until bullets worked
- added score tracker and num of enemies killed tracker
- these numbers display at end of game

## Sunday, June 9, 2019
- added start and end screens
- utilized modes for that
- spent some time debugging w structure/ placement
- fixed score/ numKilled tracker

