/*
Sesion 3 Ejercicio 4
 Usando array
 */
//Importamos la librería de sonido
import processing.sound.*;
//Creamos el objeto para el dispositivo de audio
AudioDevice dispositivo;
//Creamos el array de los archivos de audio
SoundFile[] sonidos;
void setup() {
  size(400, 400);
  //Definimos el dispositivo de audio
  dispositivo=new AudioDevice(this, 48000, 32);
  //Definimos el array y cargamos los archivos de audio al programa
  sonidos=new SoundFile[8];
  for (int i=0; i<8; i++) {
    sonidos[i]=new SoundFile(this, i+".mp3");
  }
}
void draw() {
}
//Sobre escribimos la función keyPressed de Processing
void keyPressed() {
  //Dependiendo de la tecla que se presione un archivo distinto será reproducido
  switch(key) {
  case 'a':
    sonidos[0].play();
    break;
  case 's':
    sonidos[1].play();
    break;
  case 'd':
    sonidos[2].play();
    break;
  case 'f':
    sonidos[3].play();
    break;
  case 'g':
    sonidos[4].play();
    break;
  case 'h':
    sonidos[5].play();
    break;
  case 'j':
    sonidos[6].play();
    break;
  case 'k':
    sonidos[7].play();
    break;
  }
} 