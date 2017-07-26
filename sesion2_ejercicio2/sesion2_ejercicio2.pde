/*
Sesión 2 ejercicio 2
 */
//Create the objects of the two images
PImage fondo;
PImage personaje;
void setup() {
  size(600, 400);
  //Load the images to the sketch
  fondo=loadImage("forest.png");
  personaje=loadImage("worm.png");
}
void draw() {
  //Create the background first
  image(fondo, 0, 0);
  //Now the character will move along the X-axis with the mouse position
  image(personaje, mouseX, 300, 100, 100);
}