/*
Sesión 2 ejercicio 2
 */
//Creamos los objetos de las dos imágenes
PImage fondo;
PImage personaje;
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
  image(personaje, mouseX, 300, 100, 100);
}