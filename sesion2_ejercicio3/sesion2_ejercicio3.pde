/*
Session 2 Exercise 3
 */
 //Create the objects for the two images
PImage background;
PImage character;
//Create a variable that will control the X position
int posX=100;
void setup() {
  size(600, 400);
  //Load the images to the sketch
  background=loadImage("forest.png");
  character=loadImage("worm.png");
}
void draw() {
  //Create the background first
  image(background, 0, 0);
  //Now the character will move along the X-axis with the mouse position
  image(character, posX, 300, 100, 100);
}
//Overwrite the keyPressed function
void keyPressed() {
  //If 'a' key is pressed, the character will go left
  if (key=='a') {
    posX=posX-1;
  }
   //If 'd' key is pressed, the character will go right
  if (key=='d') {
    posX=posX+1;
  }
}