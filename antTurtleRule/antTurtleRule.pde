// arrays in processing
// declare, create array (how long is it),initalize and use
// declae name and type


int [][] grid;
int cols;
int rows;
int sz;

float intheta =0; // turtles heading
PVector greg; //

void setup() {
  size(800, 800);
  sz = 2;
  cols = int(width/sz);
  rows = int(height/sz);
  noStroke();
  grid = new int[rows][cols];
  //rndGrid();
  // set the ant in the center
  greg = new PVector(cols/2, rows/2); // pvector is(x,y) array is[y][x]
  rndGrid(); // randmom points with which to collide
}

void draw() {
  showGrid();
  

  for (int t = 0; t<500; t++) {
    // check state
    //println(greg.x,greg.y, intheta);
    int state = grid[int(greg.y)][int(greg.x)];  // just recast as ints
    // check rules
    //At a white square, turn 90° clockwise, flip the color of the square, move forward one unit
    if (state == 0 ) {
      // turn clockwise
      right();
      // flip the color
       
      grid[floor(greg.y)][floor(greg.x)] = 1;
      // move forward
      
      forward();
    } else if (state == 1) {  //At a black square, turn 90° counter-clockwise, flip the color of the square, move forward one unit
      // turn counter
      left();
      // flip the color
       
      grid[floor(greg.y)][floor(greg.x)] = 0;
      // move forward
      
      forward();
    }
  }
}



// simple turtle functions forward() only 1 right() left()
void forward() {



  float x2 = greg.x +1 *cos(radians(intheta));
  float y2 = greg.y +1 *sin(radians(intheta));
  
  // the math works out and divides evenly only need to recast as ints

  // set the x and y to new position



  greg.x = (x2); // I was flooring it twice and made a problem
  greg.y = (y2);
  
  // make it on a torus
  greg.x = ((greg.x+cols)%cols);
  greg.y = ((greg.y+rows)%rows);

  
   
}



void right() {
  intheta -= 90;
  intheta = intheta%360;
}

void left() {
  intheta += 90;
  intheta = intheta%360;
}







void showGrid() {
  for (int j =0; j < rows; j++) {
    for (int i =0; i < cols; i++) {
      // set color
      fill(grid[j][i]*127);
      rect(j*sz, i*sz, sz, sz);
    }
  }
}



void rndGrid() {
  for (int j =5; j < rows-5; j++) {
    for (int i =5; i < cols-5; i++) {
      
      if (floor(random(400))== 1){
      // set points for collision
      grid[j][i] = 1;
      //grid[j+3][i+1]=1;
      //grid[j][i+5]=1;
      }
    }
  }
}
