/*
//////////////////////////////////////////////////////////
 
 Question from GN:
 
 How can we create interaction with a for loop?
 For example: making a line of circles, and each individual circle changes color when the mouse is over it?
 
 Answer:
 You can sneak a conditional statement into that for loop
 
 //////////////////////////////////////////////////////////
 */
void setup() {
  size (700, 700);
}  

void draw() {
  background (0);
  
  for (int i = 0; i < width; i+=30) {
    if (mouseX > i - 15 && mouseX < i + 15 && mouseY > height/2 - 15 && mouseY < height/2 +15) {
      fill (30, 200, 200);
    } else {
      fill (255);
    }
    ellipse (i, height/2, 30, 30);
  }
  
}
