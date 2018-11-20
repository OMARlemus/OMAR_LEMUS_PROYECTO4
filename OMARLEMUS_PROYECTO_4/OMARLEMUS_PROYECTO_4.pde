import gab.opencv.*;
import processing.video.*;
import java.awt.*;
import processing.sound.*;
PImage secciones;
PImage fon;
int locX=0,LocY;
int pantalla;
pantalla p1;
Capture video;
OpenCV opencv;
SoundFile file1;
SoundFile file2;
SoundFile file3;
void setup() {
    p1= new pantalla();
  file1=new SoundFile (this, "tres.mp3");
  file2=new SoundFile (this, "uno.mp3");
  file3=new SoundFile (this, "dos.mp3");
  secciones= loadImage("Secc.png");
  fon= loadImage("original.jpg");
  size(640, 480);
   //video = new Capture(this, width, height);
 video = new Capture(this, 640/2, 480/2);
  opencv = new OpenCV(this, 640/2, 480/2);
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);  
  video.start();
}
/*oid captureEvent(Capture video){
video.read();
}*/
boolean sec1;
boolean sec2;
boolean sec3;
void draw() {
   if (p1.p ==0){
  p1.pantallauno ();}
  
 if((key==' ')&&(p1.p==0)){
  p1.p = 1;
  }
  
  if (p1.p == 1){
  p1.pantallados(); 
  }
  }
  


void captureEvent(Capture c) {
  c.read();
}