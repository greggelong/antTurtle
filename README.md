# antTurtle
another look at Langton's Ant using a simple turtle to draw

using a turtle called greg 

his x and y are held in a PVector and his heading is an angle

his new positon is obtained by using polar to cartesian coordinates


antTurtle no rule shows just the basic movment of the turtle


## antTurtlePoly shows the ant turtle drawing polygons using different heading angles

![antPoly](/antTurtlePoly/antTurtlePoly.png)



## antTurtleRule 

has Langton's ant rules 

and has the option of changes the size and setting random points 

or filling the whole screen solid

which in effect creates the inverse of the ant path



## AntTurtle and NetLogo vants

I compared the performance of my antTurtle with NetLogo implementation of vants.
NetLogo also uses a turtle and patches to create the visualization.
 NetLogo has a zero position in the center of its grid, a classical cartesian grid. You set the size of the grid with a single number for positive and negative numbers.  Thus, you always get an odd numbered grid.
In processing my grids are actually a 2d array data structure and out of habit and perhaps a preference for even things, the grid was always an even number.  
However, I noticed that even the basic ant rules will produce an oscillation on NetLogo.  
I then set my processing antTurtle on odd grid and was able to produce the same oscillation
Pretty interesting find! 
This really highlights how important the initial conditions are to the long-term behavior of the deterministic ant function.  Even the oddness or evenness of the grid has an effect on the higher order structure.  (are there social or  biological analogies)
I have added the NetLogo code slightly which I slightly modified from
>Wilensky, U. (2005). NetLogo Vants model. http://ccl.northwestern.edu/netlogo/models/Vants. Center for Connected Learning and Computer-Based Modeling, Northwestern University, Evanston, IL

I have also added a modified processing antTurtle for comparision antTurtleNetLogoCompare

## antTurtleChangeAngle

some really interesting results with rotating the antTurtle differnt degrees

left 30 right 30 makes a messy oscillation with no highway

let 60 right 60 makes an oscillation with north and south highways

left 60 right 120 makes another oscillation with diverse highways

left 1 right 1 draws circles

right 150 left 30 draws vertical and horizontal highways  but right 30 left 150 doesn't!!!

right 180 left 30 is a really tight oscillation

right 180 left 10 is a makes pretty circles  and reversed does the same

right 6 left 180 is a tight oscillation

right 60 left 150 has pretty fractal loops as hightways!!!

![antTurtle60R150L](/antTurtleChangeAngle/antTurtle563.png)


___ 

## antTurtleRndObstacleOddGrid

- odd grid makes the turtle oscillate 
  -- found this while comparing to NetLogo version
- obstacles in red will divert the antTurtle
![antTurtleObs](/antTurtleRndObstacleOddGrid/antTurtleObs.png/)

____
## Ant turtle 30

It is an implementation of Langton’s ant rules:

- At a blank square, turn 90° clockwise, flip the color of the square, move forward one unit 
- At a colored square, turn 90° counter-clockwise, flip the color of the square, move forward one unit

but instead of 90 degrees it turns 30 degrees

there is an interesting result that it creates a deterministic oscillating macro structure that looks like an amoeba.

The oscillation is best seen if the computation is done multiple times (500 in the code) and that data is displayed after. 

This increases the frequency and you can get a better feeling of its movement. ( like a time lapse video of a flowers opening, or a plant growing) 

It seems to grow a heart at the upper right at about 30 frames

and a large hand seems to grow out of the bottom right at 200 frames

As this macro structure is created by deterministic rules at a lower level,
this rather random looking (messy) thing will produce these structures every time you run it.

### You can interact with AntTurtle30.

I have added interaction to the program.

In antTurtle30pause when you press the mouse button and drag the mouse you add 
color to the grid,  if you hold down any key at the same time you delete color from the grid.

While you are adding or taking away color the computation of rules is paused. 

When you release the button the amoeba springs to life and reacts to your interaction.

Its originally determined future is forever changed as it seems to investigate what you have done. 

(in antTurtl30 I do not pause the computation. So your reaction to the grid very much reduced as the hundreds of computations are computed between each frame where you just place a single dot. This may also be a useful analogy concerning level and frequency that we face in our would!)

### Questions 

Is antTurtle30 alive?

Is it an analogy of life?

Is the oscillation an analogy for consciousness, self-consciousness, awareness? 

Douglas Hofstadter-- strange loop . Daniel Dennett  etc



 


 


