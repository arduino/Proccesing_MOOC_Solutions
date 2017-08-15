/*
Session 2 exercise 4
Simple
*/
//Create a String variable to store the hour, minute and second values
String time;
void setup(){
  size(600,400);
  //Define the text size
  textSize(38);
}
void draw(){
  background(222);
  //Link time values using +
  //Also use str to convert the variables into a string 
  time=str(hour())+':'+str(minute())+':'+str(second());
  //Create the text on the screen
  text(time,220,200);
}