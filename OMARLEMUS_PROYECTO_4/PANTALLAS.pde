class pantalla {
  int p;
  pantalla() {
    this.p=0;
  }
  void pantallauno(){
scale(2);
image (fon, 0, 0,640/2, 480/2);
}
void pantallados(){
  scale(2);
  opencv.loadImage(video);
  image(video, 0, 0 );
  noFill();
  stroke(0, 255, 0);
  strokeWeight(3);
  Rectangle[] faces = opencv.detect();
  println(faces.length);
  for (int i = 0; i < faces.length; i++) {
    println(faces[i].x + "," + faces[i].y);
    rect(faces[i].x, faces[i].y, faces[i].width, faces[i].height);
locX=faces[i].x;
  faces[i].y=LocY;
  }
  if(locX>193){
  if(!sec1){
       file2.stop();
        file3.stop();
    file1.play();
    sec1=true;}
  sec2=false;
  sec3=false;

  }
 
  
    if(locX<180&&locX>110){
  if(!sec2){
    file1.stop();
     file3.stop();
    file2.play();
  sec2=true;}
  sec1=false;
  sec3=false;

  }
     if(locX<60){
  if(!sec3){
    file1.stop();
     file2.stop();
    file3.play();
  sec3=true;}
  sec1=false;
  sec2=false;

  }
     image (secciones, 0, 0,640/2, 480/2);
}
}