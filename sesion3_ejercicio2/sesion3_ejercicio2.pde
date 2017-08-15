/*
Session 3 Exercise 2
 */
//Import video library
import processing.video.*;
//Create the object for the capture
Capture cam;
//Create a String variable to record the hour, minutes and seconds data
String time;
void setup() {
  size(640, 480);
  //Print the list of cameras availables
  String[] camaras= Capture.list();
  println(camaras);
  //Define and start capture
  cam=new Capture(this, camaras[0]);
  cam.start();
  //Define the text size
  textSize(38);
}
void draw() {
  //If there is a new capture available, read it
  if (cam.available()==true) {
    cam.read();
  }
  //Draw the camera image
  image(cam, 0, 0);
  //Link the information using +
  //Use the str function to convert numbers into strings
  time=str(hour())+":"+str(minute())+":"+str(second());
  //Create the text
  text(time, 10, 50);
}
//Overwrite Processing keyPressed function
void keyPressed() {
  //If 'r' key is pressed an image will be saved in the sketch folder
  //with the name "time" in png format
  if (key=='r') {
    saveFrame(time+".png");
  }
}