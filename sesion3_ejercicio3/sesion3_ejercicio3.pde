/*
Session 3 Exercise 3
*/
//Import sound library
import processing.sound.*;
//Create the object for the sound file
SoundFile sonido;
//Create a String variable to store the mouse position
String posRaton;
void setup(){
  size(600,400);
  //Load the sound file to the sketch
  sonido=new SoundFile(this,"groove.mp3");
  //Define the sound file as a loop
  sonido.loop();
  //Define the text size
  textSize(38);
}
void draw(){
  background(255);  
  //Filter 1: sound speed
  sonido.rate(map(mouseX,0,600,0.25,4.0));
  //Filtro 2: sound amplitude
  sonido.amp(map(mouseY,0,400,0.2,1));
  //Filter 3: define if the sound comes from the left or right
  sonido.pan(map(mouseY,0,400,-1,1));
  //Link the mouse positions using +
  //Use str to convert numbers into strings
  posRaton="X: "+str(mouseX)+" - Y: "+str(mouseY);
  //Draw the text
  fill(0);
  text(posRaton,10,200);
}