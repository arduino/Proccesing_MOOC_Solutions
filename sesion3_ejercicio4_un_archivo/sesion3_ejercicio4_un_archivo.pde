/*
Session 3 Exercise 4
One file
*/
//Import sound library
import processing.sound.*;
//Create the object for the audio device
AudioDevice dispositivo;
//Create the object for the audio file
SoundFile sonido;
void setup() {
  size(400, 400);
  //Define the audio device
  dispositivo=new AudioDevice(this, 48000, 32);
  //Load the audio file
  sonido=new SoundFile(this, "c.mp3");
}
void draw() {
}
//Overwrite Processing keyPressed function 
void keyPressed() {
  //Depending on the pressed key the file pitch will change
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