/*
Sesión 3 Ejercicio 4
Un solo archivo
*/
//Importamos la librería de sonido
import processing.sound.*;
//Creamos el objeto para el dispositivo de audio
AudioDevice dispositivo;
//Creamos el objeto para el archivo de audio
SoundFile sonido;
void setup() {
  size(400, 400);
  //Definimos el dispositivo de audio
  dispositivo=new AudioDevice(this, 48000, 32);
  //Cargamos el archivo de audio
  sonido=new SoundFile(this, "c.mp3");
}
void draw() {
}
//Sobre escribimos la función keyPressed de Processing
void keyPressed() {
  //Dependiendo de la tecla que se presione el pitch de archivo cambiará
  switch(key) {
  case 'a':
    sonido.play(1, 1);
    break;
  case 's':
    sonido.play(1.5, 1);
    break;
  case 'd':
    sonido.play(2, 1);
    break;
  case 'f':
    sonido.play(2.5, 1);
    break;
  case 'g':
    sonido.play(3, 1);
    break;
  case 'h':
    sonido.play(3.5, 1);
    break;
  case 'j':
    sonido.play(4, 1);
    break;
  case 'k':
    sonido.play(4.5, 1);
    break;
  }
} 