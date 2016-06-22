/*
Sesión 1 Ejercicio 4
 */
//Variables de posición
int posX=100;
int posY=100;
//variables de dirección
int dirX=1;
int dirY=1;
void setup() {
  size(600, 400);
}
void draw() {
  background(222);
  //Cálculo para el eje X
  posX=posX+dirX;
  if (posX>width) {
    dirX=-1;
  }
  if (posX<0) {
    dirX=1;
  }
  //Cálculo para el eje Y
  posY=posY+dirY;
  if (posY>height) {
    dirY=-1;
  }
  if (posY<0) {
    dirY=1;
  }
  //Pintamos la primitiva primaria
  ellipse(posX, posY, 30, 30);
}