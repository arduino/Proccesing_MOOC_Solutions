/*
Sesión 3 Ejercicio 3
*/
//Importamos la libraría de sonido
import processing.sound.*;
//Creamos el objeto para el archivo de sonido
SoundFile sonido;
//Creamos una variable de tipo string que guardará la posición del ratón
String posRaton;
void setup(){
  size(600,400);
  //Cargamos el archivo de sonido al programa
  sonido=new SoundFile(this,"groove.mp3");
  //Definimos el archivo de sonido como loop
  sonido.loop();
  //Definimos el tamaño del texto
  textSize(38);
}
void draw(){
  background(255);  
  //Filtro 1: velocidad del sonido
  sonido.rate(map(mouseX,0,600,0.25,4.0));
  //Filtro 2: amplitud del sonido
  sonido.amp(map(mouseY,0,400,0.2,1));
  //Filtro 3: definimos si el sonido proviene de la izquierda o de la derecha
  sonido.pan(map(mouseY,0,400,-1,1));
  //Encadenamos las posiones del ratón usando +
  //Usamos str para convertir números en cadenas de caracteres
  posRaton="X: "+str(mouseX)+" - Y: "+str(mouseY);
  //Pintamos el texto
  fill(0);
  text(posRaton,10,200);
}