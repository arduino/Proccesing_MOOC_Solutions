/*
Session 2 exercise 1
*/
//Create the objects for the two images
PImage img1;
PImage img2;
void setup(){
  size(600,400);
  //Load the images to the sketch
  img1=loadImage("moon-wide.jpg");
  img2=loadImage("ystone08.jpg");
}
void draw(){
  //Place the images on the canvas
  image(img1,0,0,300,400);
  image(img2,300,0,300,400);
}