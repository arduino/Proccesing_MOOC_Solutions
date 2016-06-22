/*
Sesión 2 ejercicio 4
Simple
*/
//Creamos una variable de tipo String donde guardaremos los valores
//de la hora, los minutos y los segundos
String tiempo;
void setup(){
  size(600,400);
  //Definimos el tamaño del texto
  textSize(38);
}
void draw(){
  background(222);
  //Encadenamos los valores del tiempo usando +
  //Además usamos str para convertir variables en cadenas de caracteres
  tiempo=str(hour())+':'+str(minute())+':'+str(second());
  //Pintamos el texto en la pantalla
  text(tiempo,220,200);
}