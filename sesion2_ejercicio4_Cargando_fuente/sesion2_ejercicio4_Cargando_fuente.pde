/*
Session 2 Exercise 4
Load external font
*/
//Create the font object
PFont font;
//Create a String variable to store the hour, minute and second values
String tiempo;
void setup(){
  size(600,400);
  //Load the external font which is located in the data folder
  font=loadFont("DejaVuSerifCondensed-32.vlw");
  //Define the font and its size
  textFont(font,32);
}
void draw(){
  background(222);
  //Link time values using +
  //Also use str to convert the variables into a string 
  tiempo=str(hour())+':'+str(minute())+':'+str(second());
   //Create the text on the screen
  text(tiempo,220,200);
}