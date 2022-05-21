// arrays in processing
// declare, create array (how long is it),initalize and use
// declae name and type


int [][] grid;
int cols;
int rows;
int sz;

float intheta =185; // turtles heading
PVector greg; //

void setup() {
  size(800, 800);
  sz = 5;
  cols = 160;
  rows = 160;
  noStroke();
  grid = new int[rows][cols];
  //rndGrid();
  greg = new PVector(70, 120);
  println(greg.x,greg.y);
  grid[int(greg.y)][int(greg.x)] = 1;
  
  intheta =0;
  for(int i =3; i<13; i++){
  makePoly(i,30);
  }
  showGrid();
}


void makeSqr(int llen){
  for (int i =0; i <4; i++) {
    for (int l =0; l<llen; l++) {
      //println(greg.x,greg.y, intheta);
      forward();
       
    }
    right(90);
  }
}



void makePoly(int sides, int llen){
  float inang = 360/sides;
  for (int i =0; i <sides; i++) {
    for (int l =0; l<llen; l++) {
     // println(greg.x,greg.y, intheta);
      forward();
       
    }
    right(inang);
  }
}

// simple turtle functions forward() only 1 right() left()
void forward() {

  float x2 = greg.x +1 *cos(radians(intheta));
  float y2 = greg.y +1 *sin(radians(intheta));
  
  grid[floor(greg.y)][floor(greg.x)]=1;
  // set the x and y to new position
  greg.x = (x2);
  greg.y = (y2);
}

void right(float ang) {
  intheta -= ang;
  intheta = intheta%360;
}

void left(float ang) {
  intheta += ang;
  intheta = intheta%360;
}







void showGrid() {
  for (int j =0; j < rows; j++) {
    for (int i =0; i < cols; i++) {
      // set color
      fill(grid[j][i]*127);
      rect(i*sz, j*sz, sz, sz); // whoops!! this is standard x, y
    }
  }
}



void rndGrid() {
  for (int j =0; j < rows; j++) {
    for (int i =0; i < cols; i++) {
      // set color
      grid[j][i] = floor(random(3));
    }
  }
}
