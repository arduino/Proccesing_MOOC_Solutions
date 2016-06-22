/*
Sesión 1 Ejercicio 3
 */
void setup() {
  size(400, 400);
}
void draw() {
  background(222);
  //Primitiva gráfica la cual se desplaza de acuerdo con las
  //coordenadas del ratón
  ellipse(mouseX, mouseY, 30, 30);
}