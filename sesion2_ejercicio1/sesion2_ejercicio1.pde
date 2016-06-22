/*
Sesión 2 ejercicio 1
*/
//Creamos los objetos de las dos imágenes
PImage img1;
PImage img2;
void setup(){
  size(600,400);
  //Cargamos las imágenes a nuestro programa
  img1=loadImage("moon-wide.jpg");
  img2=loadImage("ystone08.jpg");
}
void draw(){
  //Pintamos las imágenes
  image(img1,0,0,300,400);
  image(img2,300,0,300,400);
}