// arrays in processing
// declare, create array (how long is it),initalize and use
// declae name and type


int [][] grid;
int cols;
int rows;
int sz;

float intheta =180; // turtles heading
PVector greg; //

void setup() {
  size(800, 800);
  sz = 5;
  cols = 160;
  rows = 160;
  noStroke();
  grid = new int[rows][cols];
  //rndGrid();
  greg = new PVector(80, 80);
  grid[floor(greg.y)][floor(greg.x)]=2;
  intheta =0;
  for (int i = 0; i < 20;i++){
    forward();
  }
  makeSqr(10);
  showGrid();
}


void makeSqr(int llen){
  for (int i =0; i <4; i++) {
    for (int l =0; l<llen; l++) {
      println(greg.x,greg.y, intheta);
      forward();
       
    }
    right();
  }
}


// simple turtle functions forward() only 1 right() left()
void forward() {

  float x2 = greg.x +1 *cos(radians(intheta));
  float y2 = greg.y +1 *sin(radians(intheta));
  
  grid[floor(greg.y)][floor(greg.x)]=1;
  // set the x and y to new position
  greg.x = floor(x2);
  greg.y = floor(y2);
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
  for (int j =0; j < rows; j++) {
    for (int i =0; i < cols; i++) {
      // set color
      grid[j][i] = floor(random(3));
    }
  }
}
