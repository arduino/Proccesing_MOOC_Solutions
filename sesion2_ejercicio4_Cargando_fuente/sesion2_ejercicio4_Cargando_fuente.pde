/*
Sesión 2 ejercicio 4
Cargando fuente externa
*/
//Creamos el objeto de la fuente
PFont fuente;
//Creamos una variable de tipo String donde guardaremos los valores
//de la hora, los minutos y los segundos
String tiempo;
void setup(){
  size(600,400);
  //Cargamos la fuene externa que se encuentra en la carpeta data
  fuente=loadFont("DejaVuSerifCondensed-32.vlw");
  //Definimos la fuente que vamos a usar y su tamaño
  textFont(fuente,32);
}
void draw(){
  background(222);
  //Encadenamos los valores del tiempo usando +
  //Además usamos str para convertir variables en cadenas de caracteres
  tiempo=str(hour())+':'+str(minute())+':'+str(second());
  //Pintamos el texto en la pantalla
  text(tiempo,220,200);
}