/*
STAGE CHANGES REVIEW. 
 Demo for simple game using 3 game states: pregame, game, and game over.
 
 Modified from previous demo:
 * added user-defined functions
 * changed state names slightly (so function names and text Strings can match, for clarity)
 */


String state= "preGame"; //storing our states as Strings 
int ellipseY=0; //y value of ellipse


void setup() {
  size (500, 500);
  textAlign(CENTER);
  textSize(36);
}


void draw() {
  if (state=="preGame") {
    preGame();
  } else if (state=="game") {
    game();
  } else if (state=="gameOver") {
    gameOver();
  }
  println(state);
}


//triggers different states depending on which state already in
void mousePressed() {
  if (state== "preGame") {
    state="game";
  } else if (state=="gameOver") {
    state= "preGame";
  }
}


//USER-DEFINED FUNCTIONS
void preGame() {
  background(0);
  text("click to start the game", width/2, height/2);
}

void game() {
  background(0, 0, 255);
  text("what a fun game.", width/2, height/2);
  ellipse(mouseX, ellipseY, 100, 100);
  ellipseY++;
  //when ellipse reaches bottom of screen the game is over
  if (ellipseY>height+50) { 
    state="gameOver";
    ellipseY=0; //reset ellipseY value
  }
}

void gameOver() {
  background(255, 0, 0);
  text("everyone loses.", width/2, height/2);
  text("click to play again.", width/2, height/2 + 50);
}
