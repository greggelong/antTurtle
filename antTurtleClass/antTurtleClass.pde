// arrays in processing
// declare, create array (how long is it),initalize and use
// declae name and type


// odd grid makes the turtle oscillate 
//   -- found this while comparing to NetLogo version
// obstacles in red will divert the antTurtle


int [][] grid;
int cols;
int rows;
int sz;

AntTurtle greg;
AntTurtle mj;

float intheta =0; // turtles heading//

void setup() {
  size(800, 800);
  sz = 2;
  cols = int(width/sz);
  rows = int(height/sz);
  noStroke();
  grid = new int[rows][cols];
  
  // initalize the ants
  greg = new AntTurtle(100,100,1,90,90); // (x,y,symbol,LeftturnAngle,rightTurnAngle)
  mj = new AntTurtle(200,200,2,150,60);
  
   //rndGrid(); // randmom points with which to collide
}

void draw() {
  showGrid();
  

  for (int t = 0; t<300; t++) {
    // check state
    //println(greg.x,greg.y, intheta);
    greg.rules();
    mj.rules();
     
}



// simple turtle functions forward() only 1 right() left()

}










void showGrid() {
  for (int j =0; j < rows; j++) {
    for (int i =0; i < cols; i++) {
      if (grid[j][i]== 0){
        fill(0);
      } else if(grid[j][i]== 1){
        fill(255, 191, 0);
      } else if(grid[j][i] == 2){
        fill(200,50,0);
      }
       
      rect(i*sz, j*sz, sz, sz); // whoops!! this is standard x, y
    }
  }
}



void rndGrid() {
  for (int j =5; j < rows-5; j++) {
    for (int i =5; i < cols-5; i++) {
      
      if (floor(random(400))== 1){
      // set points for collision
      grid[j][i] = 2;
      //grid[j+3][i+1]=1;
      //grid[j][i+5]=1;
      }
    }
  }
}

void mousePressed() {
  save("antTurtleObstacle"+frameCount+".png");
}
