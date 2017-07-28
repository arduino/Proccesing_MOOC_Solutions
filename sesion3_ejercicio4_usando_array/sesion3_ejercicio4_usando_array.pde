/*
Session 3 Exercise 4
 Using arrays
 */
//Import sound library
import processing.sound.*;
//Create the object for the audio device
AudioDevice dispositivo;
//Create the array of the audio files
SoundFile[] sonidos;
void setup() {
  size(400, 400);
  //Define the audio device
  dispositivo=new AudioDevice(this, 48000, 32);
  //Define the array and load the audio file to the sketch
  sonidos=new SoundFile[8];
  for (int i=0; i<8; i++) {
    sonidos[i]=new SoundFile(this, i+".mp3");
  }
}
void draw() {
}
//Overwrite Processing keyPressed function
void keyPressed() {
  //Depending on the pressed key a different file will be played
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