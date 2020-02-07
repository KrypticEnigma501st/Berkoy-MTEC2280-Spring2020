/*
///////////////////////////////////////////
 Another demo exploring conditionals and random()
 
 Click the mouse to change ellipse movement
 ///////////////////////////////////////////
 */

//creates global variables
float x, y, xMove, yMove;

void setup() {
  size (700, 700);
  //start ellipse at canvas center
  x= width/2;
  y= height/2;
}

void draw() {
  background (0);
  fill (0, 255, 0);
  ellipse (x, y, 100, 100);

  //increment the x, y location
  x= x + xMove;  
  y= y + yMove;

  //if x or y go beyond bounds of canvas, flip direction
  if (x> width || x < 0) { 
    xMove= -xMove;
  }
  if (y> height || y <0) {
    yMove = -yMove;
  }

  //print values to the console
  println ("x: " + x + " y: " + y + " xMove: " + xMove + " yMove: " + yMove);
}

//click mouse to return new random values for xMove and yMove
void mousePressed() {
  xMove= random (-10, 10);
  yMove= random (-10, 10);
}
