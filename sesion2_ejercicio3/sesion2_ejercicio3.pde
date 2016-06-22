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
  //Pintamos primero el fondo
  image(fondo, 0, 0);
  //Ahora el personaje que se moverá en el eje X con la posición del ratón
  image(personaje, posX, 300, 100, 100);
}
//Sobreescribimos la función keyPressed
void keyPressed() {
  //Si se presiona la 'a' el personaje irá a la izquierda
  if (key=='a') {
    posX=posX-1;
  }
  //Si se presiona la 'a' el personaje irá a la derecha
  if (key=='d') {
    posX=posX+1;
  }
}