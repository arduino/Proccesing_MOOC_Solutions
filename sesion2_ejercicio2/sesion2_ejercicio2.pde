/*
Session 2 Exercise 2
 */
//Create the objects for the two images
PImage background;
PImage character;
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
  image(character, mouseX, 300, 100, 100);
}