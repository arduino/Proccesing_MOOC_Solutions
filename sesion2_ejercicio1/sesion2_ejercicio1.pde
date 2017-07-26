/*
Session 2 exercise 1
*/
//Create the objects of the two images
//Creamos los objetos de las dos imágenes
PImage img1;
PImage img2;
void setup(){
  size(600,400);
  //Load the images to the sketch
  //Cargamos las imágenes a nuestro programa
  img1=loadImage("moon-wide.jpg");
  img2=loadImage("ystone08.jpg");
}
void draw(){
  //Draw the images
  //place the images in the canvas
  image(img1,0,0,300,400);
  image(img2,300,0,300,400);
}