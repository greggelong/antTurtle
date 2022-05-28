class AntTurtle {
  float x;
  float y;
  int symb;
  int intheta;
  float x2;
  float y2;
  float lta; // left turn angle
  float rta; // right turn angle  

  // constructor
  AntTurtle(float tx, float ty, int mysymb, float mylta, float myrta) {
    x = tx;
    y = ty;
    symb = mysymb;
    intheta = 0;
    lta = mylta;
    rta = myrta;
  }

  void right() {
    intheta -= rta;
    intheta = intheta%360;
  }

  void left() {
    intheta += lta;
    intheta = intheta%360;
  }


  void forward() {



    x2 = x +1 *cos(radians(intheta));
    y2 = y +1 *sin(radians(intheta));

    // the math works out and divides evenly only need to recast as ints

    // set the x and y to new position



    x = (x2); // I was flooring it twice and made a problem
    y = (y2);

    // make it on a torus
    x = ((x+cols)%cols);
    y = ((y+rows)%rows);
  }

  void rules() {

    int state = grid[int(y)][int(x)];  // just recast as ints
    // check rules
    //At a white square, turn 90° clockwise, flip the color of the square, move forward one unit
    if (state == 0 ) {
      // turn clockwise
      right();
      // flip the color

      grid[floor(y)][floor(x)] = symb;
      // move forward

      forward();
    } else if (state >0) {  //At a black square, turn 90° counter-clockwise, flip the color of the square, move forward one unit
      // turn counter
      left();
      // flip the color

      grid[floor(y)][floor(x)] = 0;
      // move forward

      forward();
    }
  }
}
