/*
Sesión 3 Ejercicio 1
 */
//Importamos la librería de video
import processing.video.*;
//Creamos el objeto de la captura
Capture cam;
//Creamos un variable de tipo String en la cual vamos a grabar la información 
//de la hora, los minutos y los segundos
String tiempo;
void setup() {
  size(640, 480);
  //Imprimimos la lista de las cámaras disponibles
  String[] camaras= Capture.list();
  println(camaras);
  //Definimos e inicializamos la captura
  cam=new Capture(this, camaras[0]);
  cam.start();
  //Definimos el tamaño del texto
  textSize(38);
}
void draw() {
  //Si hay una nueva captura disponible, leala
  if (cam.available()==true) {
    cam.read();
  }
  //Pintamos la imagen del la cámara
  image(cam, 0, 0);
  //Encadenamos la información usando +
  //Usamos la función str para convertir números en cadenas de caracteres
  tiempo=str(hour())+":"+str(minute())+":"+str(second());
  //Pintamos el texto
  text(tiempo, 10, 50);
}