/*
Sesión 2 ejercicio 3
 */
//Creamos los objetos de las dos imágenes
PImage fondo;
PImage personaje;
//Creamos una variable que controlará la posición en X
int posX=100;
void setup() {
  size(600, 400);
  //Cargamos las imágenes a nuestro programa
  fondo=loadImage("forest.png");
  personaje=loadImage("worm.png");
}
void draw() {
  //Create the background first
  image(fondo, 0, 0);
  //Now the character will move along the X-axis with the mouse position
  image(personaje, posX, 300, 100, 100);
}
//Overwrite the keyPressed function
void keyPressed() {
  //Si se presiona la 'a' el personaje irá a la izquierda
  if (key=='a') {
    posX=posX-1;
  }
   //If 'd' key is pressed, the character will go right
  if (key=='d') {
    posX=posX+1;
  }
}