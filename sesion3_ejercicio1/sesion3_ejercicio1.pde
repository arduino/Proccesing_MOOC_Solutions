/*
Session 3 Exercise 1
 */
//Import video library
import processing.video.*;
//Create the object for the capture
Capture cam;
//Create a String variable to record the hour, minutes and seconds data
String tiempo;
void setup() {
  size(640, 480);
  //Print the list of cameras availables
  String[] camaras= Capture.list();
  println(camaras);
  //Define and start capture
  cam=new Capture(this, camaras[0]);
  cam.start();
  //Define text size
  textSize(38);
}
void draw() {
  //If there is a new capture available, read it
  if (cam.available()==true) {
    cam.read();
  }
  //Create the camera image
  image(cam, 0, 0);
  //Link time values using +
  //Use str to convert the variables into a string 
  tiempo=str(hour())+":"+str(minute())+":"+str(second());
  //Create the text
  text(tiempo, 10, 50);
}