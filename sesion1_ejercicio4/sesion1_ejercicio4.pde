/*
Sesión 1 Ejercicio 4
 */
//Position Variables
int posX=100;
int posY=100;
//Direction Variables
int dirX=1;
int dirY=1;
void setup() {
  size(600, 400);
}
void draw() {
  background(222);
  //X-axis calculation
  posX=posX+dirX;
  if (posX>width) {
    dirX=-1;
  }
  if (posX<0) {
    dirX=1;
  }
  //Y-axis calculation
  posY=posY+dirY;
  if (posY>height) {
    dirY=-1;
  }
  if (posY<0) {
    dirY=1;
  }
  //Draw shape primitive
  ellipse(posX, posY, 30, 30);
}